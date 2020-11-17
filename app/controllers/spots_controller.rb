class SpotsController < ApplicationController

  def show
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user == current_user
    if @spot.save
      redirect_to spot_path(@spot), notice: 'Spot Created!'
    else
      render 'pages/home'
    end
  end

  def edit
    @spot = Spot.find(params[:id])
    unless @spot.user == current_user
      redirect_to root_path, notice: 'Not allowed to Edit 😫'
    end
  end

  def update
  end

  def destroy
  end

  private

  def spot_params
    params.require(:spot).permit(:address, :crowd_congestion, :description, photos: [])
  end

end
