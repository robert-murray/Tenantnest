class AgentDashController < ApplicationController

  layout "dashboard"

  def my_details
  end

  def review_requests
    @requests = @current_user.leases.where(rated: false, currently_active: false).order(:end_date)
  end

  def new_outgoing
    @outgoing_rating = OutgoingRating.new
  end

  def create
    @outgoing_rating = OutgoingRating.new(outgoing_rating_params)

    respond_to do |format|
      if @outgoing_rating.save
        format.html { redirect_to @outgoing_rating, notice: 'Outgoing rating was successfully created.' }
        format.json { render :show, status: :created, location: @outgoing_rating }
      else
        format.html { render :new }
        format.json { render json: @outgoing_rating.errors, status: :unprocessable_entity }
      end
    end
  end

end
