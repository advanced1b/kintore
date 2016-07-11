class AdminController < ApplicationController
  helper_method :current_admin

  def current_admin
    @current_admin ||= Admin.find_by_id(session[:admin_id]) if session[:admin_id].present?
  end

  def require_admin
    unless current_admin
      redirect_to admin_login_path
      return false
    end
    return true
  end
end
