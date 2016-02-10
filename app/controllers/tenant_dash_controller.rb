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
end
