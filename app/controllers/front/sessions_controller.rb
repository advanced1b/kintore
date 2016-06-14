class SessionsController < FrontController
  layout false

  # ログイン
  def login
    user = User.find_by_login(params[:login])

    if user.present? && user.authenticate(params[:password_digest])
      session[:user_id] = user.id
      redirect_to root_path
    else
      Rails.logger.info("[Login Fail] #{parms[:login]} from #{request.remote_ip} at #{Time.now.to_s(:db)}")
      flash.now[:notice] = ["指定したアカウントは存在しません。"]
      render :new, layout: false
    end
  end

  # ログアウト
  def logout
    session[:user_id] = nil
    flash[:notice] = ["ログアウトしました。"]
    redirect_to "login_url"
  end
end