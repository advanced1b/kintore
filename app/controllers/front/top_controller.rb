class Front::TopController < FrontController

  layout "front"

  def index
    @user = User.new
  end

  #def create
    #@user = User.new(user_params)

    #if @user.save
      #redirect_to root,notice: 'test create success'
    #else
      #render :index
    #end
  #end

  private

    def user_params
      params.require(:user).permit(:name, :login, :password_digest,:sex,:height,:weight,:body_type)
    end

end
