class SessionController < ApplicationController
  def new
  end

  def create
    
    if params[:user_type] == 'occupant'
      tenant = Tenant.find_by :email => params[:email]
      if tenant.present? && tenant.authenticate(params[:password])
        session[:tenant_id] = tenant.id
        redirect_to tenant_dash_lease_history_path
      else
        flash[:error] = 'Invalid login'
        redirect_to login_path
      end
    elsif params[:user_type] == 'agent'
      agent = Agent.find_by :email => params[:email]
      if agent.present? && agent.authenticate(params[:password])
        session[:agent_id] = agent.id
        redirect_to agent_dash_review_requests_path
      else
        flash[:error] = 'Invalid login'
        redirect_to login_path
      end
    else
      flash[:error] = 'Invalid login'
      redirect_to login_path
    end
  end

  def destroy
    session[:tenant_id] = nil
    session[:agent_id] = nil # Forget the user_id, and so log them out.
    redirect_to root_path
  end
end
