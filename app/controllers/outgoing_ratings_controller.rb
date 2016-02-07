class OutgoingRatingsController < ApplicationController
  before_action :set_outgoing_rating, only: [:show, :edit, :update, :destroy]

  # GET /outgoing_ratings
  # GET /outgoing_ratings.json
  def index
    @outgoing_ratings = OutgoingRating.all
  end

  # GET /outgoing_ratings/1
  # GET /outgoing_ratings/1.json
  def show
  end

  # GET /outgoing_ratings/new
  def new
    @outgoing_rating = OutgoingRating.new
  end

  # GET /outgoing_ratings/1/edit
  def edit
  end

  # POST /outgoing_ratings
  # POST /outgoing_ratings.json
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

  # PATCH/PUT /outgoing_ratings/1
  # PATCH/PUT /outgoing_ratings/1.json
  def update
    respond_to do |format|
      if @outgoing_rating.update(outgoing_rating_params)
        format.html { redirect_to @outgoing_rating, notice: 'Outgoing rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @outgoing_rating }
      else
        format.html { render :edit }
        format.json { render json: @outgoing_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outgoing_ratings/1
  # DELETE /outgoing_ratings/1.json
  def destroy
    @outgoing_rating.destroy
    respond_to do |format|
      format.html { redirect_to outgoing_ratings_url, notice: 'Outgoing rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outgoing_rating
      @outgoing_rating = OutgoingRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outgoing_rating_params
      params.require(:outgoing_rating).permit(:tenant_id, :agent_id, :lease_holder, :rent_amount, :rent_frequency, :rent_arrears, :rent_arrears_remedied, :nrt_received, :nrt_reason, :inspection_periodic, :inspection_clean, :inspection_pets, :inspection_dammage, :inspection_dammage_comment, :neighbor_complaints, :neighbor_complaints_comment, :bond_refunded, :bond_refunded_comment, :tenancy_terminated, :tenancy_terminated_by, :tenancy_terminated_comment)
    end
end
