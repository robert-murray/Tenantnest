class TenantDashController < ApplicationController

  layout "dashboard"

  def my_details
  end

  def lease_history
  end

  def profile_link
  end

  def new_lease
    @lease = Lease.new
  end


  private
      def lease_params
      params.require(:lease).permit(:agent_id, :tenant_id, :address_street, :address_suburb, :address_postcode, :address_state, :start_date, :end_date, :currently_active)
    end
end
