class BookmarksController < ApplicationController
    def index
        @bookmarks = Bookmark.all
        @currentUser = current_user.id
    end

    def create
        @bookmark = Bookmark.new
        @restaurant = Restaurant.find(params[:restaurant_id])
        @bookmark.restaurant = @restaurant
        @bookmark.user = current_user
        @bookmark.save
    end

    def destroy 
        @bookmark = Bookmark.find(params[:id])
        @bookmark.destroy
    end


end
