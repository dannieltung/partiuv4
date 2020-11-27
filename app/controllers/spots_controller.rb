class SpotsController < ApplicationController

  def new
    @spot = Spot.new
    @crowdness = Crowdness.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    @crowdness = Crowdness.new(crowdness_params)
    @crowdness.user = current_user
    @crowdness.spot = @spot
    if @spot.save && @crowdness.save
      redirect_to spot_path(@spot), notice: 'Spot Created!'
    else
      render :new
    end
  end

  def show
    @spot = Spot.find(params[:id])
  end

  private

  def spot_params
    params.require(:spot).permit(:address, :name)
  end

  def crowdness_params
    params.require(:crowdness).permit(:level, :description, :spot_id)
  end

end
# def edit
#   @spot = Spot.find(params[:id])
#   unless @spot.user == current_user
#     redirect_to root_path, notice: 'Not allowed to Edit 😫'
#   end
# end

# def update
#   @spot = Spot.find(params[:id])
#   unless @spot.user == current_user
#     redirect_to root_path, notice: 'Not allowed to Delete 🤬'
#   end
#   if spot.update(spot_params)
#     redirect_to spot_path(@spot), notice: 'Info updated!'
#   else
#     redirect_to :edit
#   end
# end

# def destroy
#   @spot = Spot.find(params[:id])
#   unless @spot.user == current_user
#     redirect_to root_path, notice: 'Not allowed to Delete 🤬'
#   end
#   @spot.destroy
#   redirect_to root_path, notice: 'Spot Deleted!'
# end
