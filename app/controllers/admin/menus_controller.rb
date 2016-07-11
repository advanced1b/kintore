class Admin::MenusController < AdminController
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
    @trainings = Training.all
    @training_ids = []
  end

  def edit
    @menu = Menu.find_by_id(params[:id])
    @trainings = Training.all
    @training_ids = @menu.trainings.pluck(:id)
    @training_ids = @menu.trainings.present? ? @menu.trainings.pluck(:id) : []
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.trainings = menu_params[:training_attributes].present? ? Training.find(menu_params[:training_attributes]) : []
    if @menu.save
      flash[:notice] = ["success", "作成しました。"]
      redirect_to admin_menus_path
    else
      flash[:notice] = ["error", "失敗しました。"]
      redirect_to new_admin_menu_path
    end
  end

  def update
    @menu = Menu.find_by_id(params[:id])
    @menu.attributes = menu_params
    @menu.trainings  = menu_params[:training_attributes].present? ? Training.find(menu_params[:training_attributes]) : []
    if @menu.save
      flash[:notice] = ["success", "作成しました。"]
      redirect_to admin_menus_path
    else
      flash[:notice] = ["error", "失敗しました。"]
      redirect_to edit_admin_menu_path
    end
  end

  def destroy
    @menu = Menu.find_by_id(params[:id])
    @menu.destroy
    redirect_to admin_menus_path
  end

  private
    def menu_params
      params.require(:menu).permit!()
    end
end

