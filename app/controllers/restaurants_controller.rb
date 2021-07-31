class RestaurantsController < ApplicationController
  def index
    @bookmark = Bookmark.new
    if params[:query].present?
      @restaurants = Restaurant.search_by_name_and_cuisine(params[:query]).order(created_at: :asc)
    else
      @restaurants = Restaurant.all.order(created_at: :asc)
    end

    @markers = @restaurants.geocoded.map do |res|
      {
        lat: res.latitude,
        lng: res.longitude
      }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant_geocoded = Restaurant.geocoded.find(params[:id])
    @restaurant_image = ""
    if @restaurant.cuisine == "Mexican"
      @restaurant_image << "https://source.unsplash.com/Y0zbn9lPCEU"
    elsif @restaurant.cuisine == "Italian"
      @restaurant_image << "https://source.unsplash.com/MqT0asuoIcU"
    else
      @restaurant_image << "https://source.unsplash.com/Y11iTVE2DFA"
    end

    @markers =
      {
        lat: @restaurant_geocoded.latitude,
        lng: @restaurant_geocoded.longitude
      }
  end
end
