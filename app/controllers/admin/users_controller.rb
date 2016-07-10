class Admin::UsersController < AdminController

  def index
    @users = User.all
  end

  def new
    @user = User.new

  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = ["success", "作成しました。"]
    else
      flash[:notice] = ["error", "失敗しました。"]
    end
  end

  def update
    @user = User.find_by_id(user_params[:id])
    @user.attributes = user_params
    if @user.save
      flash[:notice] = ["success", "作成しました。"]
      redirect_to
    else
      flash[:notice] = ["error", "失敗しました。"]
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
    redirect_to
  end

  private
    def user_params
      params.require(:user).permit!()
    end
end

