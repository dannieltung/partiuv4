class SpotsController < ApplicationController

  def new
    a = Geocoder.search([-23.551582693574243, -46.68934025256385])
    @spot = Spot.new(address: "#{a.first.data['address']['road']} #{a.first.data['address']['house_number']} #{a.first.data['address']['city']} #{a.first.data['address']['state']} #{a.first.data['address']['country']}")
    # cria uma instancia isolada
    @spot.crowdnesses.build
    # cria uma instancia associada
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
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
    params.require(:spot).permit(:address, :name, crowdnesses_attributes: [:level, :description, :user_id])
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
