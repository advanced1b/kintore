class Front::UsersController < FrontController

  layout "front"

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

      if @user.save
        redirect_to @user
      else
        flash[:warning] = "Account not activated"
        redirect_to root_path
      end
  end

  

  private

    def user_params
      params.require(:user).permit(:name, :login, :password,:sex,:height,:weight,:body_type,:password_confirmation)
    end


end
