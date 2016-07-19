class Front::UsersController < FrontController

  layout false

  def show
    @user = User.find_by_id(params[:id])
    @trainings = Menu.find_by_id(@user.menus[0].id).trainings if @user.menus.present?

    if @user.term == 2
      @trainings_first  = Menu.find_by_id(@user.menus[0].id).trainings
      @trainings_second = Menu.find_by_id(@user.menus[1].id).trainings
    elsif @user.term == 3
      @trainings_first  = Menu.find_by_id(@user.menus[0].id).trainings
      @trainings_second = Menu.find_by_id(@user.menus[1].id).trainings
      @trainings_third  = Menu.find_by_id(@user.menus[2].id).trainings
    end
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to @user
      else
        flash[:warning] = "登録しました。"
        redirect_to root_path
      end
  end

  private
    def user_params
      params.require(:user).permit(:name, :login, :password,:sex,:height,:weight,:body_type,:password_confirmation, :term)
    end
end
