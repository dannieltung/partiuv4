class SpotsController < ApplicationController

  def new
    # @coordinates = request.location.coordinates
    @spot = Spot.new(address: 'qualquer coisa')
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    if @spot.save
      redirect_to spot_path(@spot), notice: 'Spot Created!'
    else
      render :new
    end
  end

  def show
    @spot = Spot.find(params[:id])
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

  private

  def spot_params
    params.require(:spot).permit(:address, :crowd_congestion, :description, photo: [])
  end
end
