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
    redirect_to restaurants_path(query: params[:query])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to restaurants_path(query: params[:query])
  end
end
