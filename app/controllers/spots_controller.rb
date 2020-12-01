class SpotsController < ApplicationController

  def new
    a = Geocoder.search([params[:latitude], params[:longitude]])
    @spot = Spot.new(street: a.first.data['address']['road'], number: a.first.data['address']['house_number'], city: a.first.data['address']['city'], state: a.first.data['address']['state'])
    # @spot = Spot.new
    # cria uma instancia isolada
    @spot.crowdnesses.build
    # cria uma instancia associada
  end

  def create
    address = [params[:spot][:street], params[:spot][:number], params[:spot][:city], params[:spot][:state], "Brasil"].join(" ")
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    @spot.address = address
    if @spot.save!
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
    params.require(:spot).permit(:address, :name, crowdnesses_attributes: [:level, :description, :user_id, photos: []])
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
