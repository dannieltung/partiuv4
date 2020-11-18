class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.where(user: current_user).sort_by { |event| [event.fav_spot] }
    @favorite = Favorite.new
  end

  def create
    @favorites = Favorite.where(user: current_user).sort_by { |event| [event.fav_spot] }
    # por que eu preciso passar o @favorite a cima?
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user
    if @favorite.save
      redirect_to favorites_path, notice: 'Favorites created!'
    else
      render :index
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
    params.require(:favorite).permit(:fav_spot)
  end
end
