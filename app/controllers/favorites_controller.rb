class FavoritesController < ApplicationController

  def new
    @favorite = Favorite.new
    @favorite.user = current_user
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user
    if @favorite.save
      redirect_to favorite_path(@favorite), notice: 'Favorites created!'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    unless @favorite.user == current_user
      redirect_to root_path, notice: 'Not allowed to Delete 🤬'
    end
    @favorite.destroy
    redirect_to root_path, notice: 'Favorite Deleted'
  end

  private

  def favorite_params
    params.require(:favorite).permit(:spot_id)
  end
end
