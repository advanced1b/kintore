class Front::SessionsController < FrontController
  layout false

  # ログイン
  def login
    user = User.find_by_login(session_params[:login])
    if user.present? && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
      flash.now[:warning]="Login success"
    else
      Rails.logger.info("[Login Fail] #{session_params[:login]} from #{request.remote_ip} at #{Time.now.to_s(:db)}")
      flash.now[:notice] = ["指定したアカウントは存在しません。"]
      redirect_to root_path
    end
  end

  # ログアウト
  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  private
   def session_params
     params.require(:session).permit!()
   end
end
