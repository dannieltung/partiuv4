class CrowdnessesController < ApplicationController
  def new
    @spot = Spot.find(params[:spot_id])
    @crowdness = Crowdness.new
  end

  def create
    @spot = Spot.find(params[:spot_id])
    @crowdness = Crowdness.new(crowdness_params)
    @crowdness.user = current_user
    @crowdness.spot = @spot
    if @crowdness.save
      redirect_to spot_path(@spot), notice: 'Thanks for your help!'
    else
      render :new
    end
  end

  private

  def crowdness_params
    params.require(:crowdness).permit(:level, :description, photos: [])
  end
end
