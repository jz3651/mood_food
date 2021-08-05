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
        lng: res.longitude,
        info_window: render_to_string(partial: "info_window_index", locals: { restaurant: res }),
        image_url: helpers.asset_url('https://res.cloudinary.com/shamo/image/upload/v1626777768/Mood_Food_stf3we.png')
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
        lng: @restaurant_geocoded.longitude,
        info_window: render_to_string(partial: "info_window_show", locals: { restaurant: @restaurant }),
        image_url: helpers.asset_url('https://res.cloudinary.com/shamo/image/upload/v1626777768/Mood_Food_stf3we.png')
      }
  end
end
