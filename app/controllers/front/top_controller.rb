class Front::TopController < FrontController
  def index
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to front_top_index
  end

end
