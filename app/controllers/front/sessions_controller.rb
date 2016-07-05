class Front::SessionsController < FrontController
  layout false

  # ログイン
  def login
    p "======="
    p session_params
    user = User.find_by_login(session_params[:login])
    p user
    if user.present? && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to controller: 'users',action: 'index'
    else
      Rails.logger.info("[Login Fail] #{session_params[:login]} from #{request.remote_ip} at #{Time.now.to_s(:db)}")
      flash.now[:notice] = ["指定したアカウントは存在しません。"]
      redirect_to root_path

    end
  end

  # ログアウト
  def logout
    session[:user_id] = nil
    flash[:notice] = ["ログアウトしました。"]
    redirect_to "login_url"
  end

  private
   def session_params
     params.require(:session).permit!()
   end
end
