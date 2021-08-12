class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
    @currentUser = current_user.id
    # @bookmark = Bookmark.find(params[:id])
    # @restaurant = @bookmarks.restaurant(params[:id])

    # @restaurant_reviews = Restaurant.find(params[:id]).reviews.all
  end

  def create
    @bookmark = Bookmark.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @bookmark.restaurant = @restaurant
    @bookmark.user = current_user
    @bookmark.save
    redirect_to restaurants_path(location: session[:params_location], mood: session[:params_mood], cuisine: session[:params_cuisine])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to restaurants_path(location: params[:location], mood: params[:mood], cuisine: params[:cuisine])
  end
end
