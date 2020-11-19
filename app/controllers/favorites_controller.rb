class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.where(user: current_user).sort_by { |event| [event.fav_spot] }
    @favorite = Favorite.new
  end

  def create
    @favorites = Favorite.where(user: current_user).sort_by { |event| [event.fav_spot] }
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user
    if @favorite.save
      redirect_to favorites_path, notice: 'Favorites created!'
    else
      render :index
      # render é renderizar uma view mas na redirect para outro lugar.
      # não é redirect to pois se for, vc vai perder a informação que o user digitou.
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
