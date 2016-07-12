class Admin::TrainingsController < AdminController
  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

  def edit
    @training = Training.find_by_id(params[:id])
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      flash[:notice] = ["success", "作成しました。"]
      redirect_to admin_trainings_path
    else
      flash[:notice] = ["error", "失敗しました。"]
      redirect_to new_admin_training_path
    end
  end

  def update
    @training = Training.find_by_id(params[:id])
    @training.attributes = training_params
    if @training.save
      flash[:notice] = ["success", "作成しました。"]
      redirect_to admin_trainings_path
    else
      flash[:notice] = ["error", "失敗しました。"]
      redirect_to edit_admin_training_path
    end
  end

  def destroy
    @training = Training.find_by_id(params[:id])
    if @training.deleteable?
      flash[:notice] = ["error", "このデータはメニューで扱っているため, 削除できません。"]
      return redirect_to action: :index
    end
    @training.destroy
    flash[:notice] = ["success", "削除しました。"]
    redirect_to admin_trainings_path
  end

  private
    def training_params
      params.require(:training).permit!()
    end
end

