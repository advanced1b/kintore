class Front::UsersController < FrontController

  def index
  end

  def create
    @user = User.new(user_params)

      if @user.save
        redirect_to users_path ,notice: 'test create success'
      else
        redirect_to root_path
      end
  end

  private

    def user_params
      params.require(:user).permit(:name, :login, :password_digest,:sex,:height,:weight,:body_type,:password_confirmation)
    end


end
