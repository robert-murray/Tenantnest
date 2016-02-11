class AgentDashController < ApplicationController

  layout "dashboard"

  def my_details
  end

  def review_requests
    @requests = @current_user.leases.where(rated: false, currently_active: false).order(:end_date)
  end

  def new_outgoing
    @outgoing_rating = OutgoingRating.new
    @selected_lease = Lease.find_by :id => params[:lease_id]
  end

  def create
    @outgoing_rating = OutgoingRating.new(outgoing_rating_params)
    @selected_lease = Lease.find_by :id => @outgoing_rating.lease_id

    respond_to do |format|
      if @outgoing_rating.save
        @selected_lease.update(:rated => true)
        format.html { redirect_to outgoing_ratings_path, notice: 'Outgoing rating was successfully created.' }
        format.json { render outgoing_ratings_path, status: :created, location: @outgoing_rating }
      else
        format.html { render :new }
        format.json { render json: @outgoing_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_outgoing_rating
      @outgoing_rating = OutgoingRating.find(params[:id])
    end

    def outgoing_rating_params
      params.require(:outgoing_rating).permit(:rent_amount, :rent_frequency, :rent_arrears, :rent_arrears_remedied, :nrt_received, :nrt_reason, :inspection_periodic, :inspection_clean, :inspection_pets, :inspection_dammage, :inspection_dammage_comment, :neighbor_complaints, :neighbor_complaints_comment, :bond_refunded, :bond_refunded_comment, :tenancy_terminated, :tenancy_terminated_by, :tenancy_terminated_comment, :lease_id)
    end
end
