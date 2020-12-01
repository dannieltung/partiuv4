class SpotsController < ApplicationController

  def new
    user_geolocation = params[:user_geolocation]
    a = Geocoder.search(user_geolocation)
    # @spot = Spot.new(street: a.first.data['address']['road']) , number: a.first.data['address']['house_number'], city: a.first.data['address']['city'], state: a.first.data['address']['state']) #a.first.data['address']['country']
    @spot = Spot.new
    # cria uma instancia isolada
    @spot.crowdnesses.build
    # cria uma instancia associada
  end

  def create
    address = [params[:street], params[:number], params[:city], params[:state], "Brasil"].join(" ")
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
