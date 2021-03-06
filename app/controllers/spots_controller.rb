class SpotsController < ApplicationController

  def new
    a = Geocoder.search([params[:latitude], params[:longitude]])

    params[:latitude].nil? || params[:latitude].empty? ? @spot = Spot.new : @spot = Spot.new(street: a.first.data['address']['road'],
                                                                                             number: a.first.data['address']['house_number'],
                                                                                             city: a.first.data['address']['city'],
                                                                                             state: a.first.data['address']['state'])
    # cria uma instancia isolada

    @spot.crowdnesses.build
    # cria uma instancia associada
  end

  def create
    # o ajax vai procurar o nome da function e não o do método.
    address = [params[:spot][:street],
               params[:spot][:number],
               params[:spot][:city], params[:spot][:state],
               "Brasil"].join(" ")
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    @spot.address = address
    @spot.save
    if @spot.save!
      redirect_to root_path, notice: 'Spoted It 🤩!'
    else
      render :new
    end
  end

  def show
    @spot = Spot.find(params[:id])
  end

  private

  def spot_params
    params.require(:spot).permit(:city, :state, :street, :number, :address, :name, crowdnesses_attributes: [:level, :description, :user_id, photos: []])
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
