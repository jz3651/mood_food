class RestaurantsController < ApplicationController
  def index
    @bookmark = Bookmark.new
    @restaurants = Restaurant.all.order(mood_rating: :desc, created_at: :desc)
    if params[:location].present?
      @restaurants = @restaurants.search_by_name_and_cuisine(params[:location])
      session[:params_location] = params[:location]
    end
    if params[:cuisine].present?
      @restaurants = @restaurants.search_by_name_and_cuisine(params[:cuisine])
      session[:params_cuisine] = params[:cuisine]
    end
    if params[:mood].present?
      @restaurants = @restaurants.search_by_name_and_cuisine(params[:mood])
      session[:params_mood] = params[:mood]
    end
    
    @query = params[:query]
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
    @restaurant_reviews = Restaurant.find(params[:id]).reviews.all

    @markers =
      {
        lat: @restaurant_geocoded.latitude,
        lng: @restaurant_geocoded.longitude,
        info_window: render_to_string(partial: "info_window_show", locals: { restaurant: @restaurant }),
        image_url: helpers.asset_url('https://res.cloudinary.com/shamo/image/upload/v1626777768/Mood_Food_stf3we.png')
      }
  end

  # def show_reviews
  #   @restaurant_reviews = Restaurant.find(params[:id]).all
  # end


end
