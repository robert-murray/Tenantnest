class TenantDashController < ApplicationController

  layout "dashboard"

  def my_details
  end

  def lease_history
  end

  def profile_link
  end

  def new_lease
    @last_lease = @current_user.leases.where(currently_active: true).order(:end_date).take
    @lease = Lease.new
  end

  def create
    @lease = Lease.new(lease_params)

    respond_to do |format|
      if @lease.save
        format.html { redirect_to tenant_dash_lease_history_path, notice: 'New lease was successfully created.' }
        format.json { render tenant_dash_lease_history_path, status: :created, location: @lease }
      else
        format.html { render :new }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end


  private
      def lease_params
      params.require(:lease).permit(:agent_id, :tenant_id, :address_street, :address_suburb, :address_postcode, :address_state, :start_date, :end_date, :currently_active)
    end
end
