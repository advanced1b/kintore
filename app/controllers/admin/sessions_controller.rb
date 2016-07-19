class Admin::SessionsController < AdminController
  layout false

  def login
    render layout: false
  end

  # ログイン
  def create
    admin = Admin.find_by_login(params[:login])

    if admin.present? && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to admin_menus_path
    else
      Rails.logger.info("[Login Fail] #{params[:login]} from #{request.remote_ip} at #{Time.now.to_s(:db)}")
      flash[:notice] = ["error", "指定したアカウントは存在しません。"]
      render :login, layout: false
    end

  end

  # ログアウト
  def logout
    session[:admin_id] = nil
    flash[:notice] = ["success","ログアウトしました。"]
    redirect_to login_url
  end
end