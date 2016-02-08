class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_user

  private
  def fetch_user
    if session[:tenant_id].present?
      @current_user = Tenant.find_by :id => session[:tenant_id]
      session[:tenant_id] = nil unless @current_user.present?
    elsif session[:agent_id].present?
      @current_user = Agent.find_by :id => session[:agent_id]
      session[:agent_id] = nil unless @current_user.present?
    end
  end
end
