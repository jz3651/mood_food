class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant_image = ""
    if @restaurant.cuisine == "Mexican"
      @restaurant_image << "https://source.unsplash.com/Y0zbn9lPCEU"
    elsif(@restaurant.cuisine == "Italian")
      @restaurant_image << "https://source.unsplash.com/MqT0asuoIcU"
    else
      @restaurant_image << "https://source.unsplash.com/Y11iTVE2DFA"
    end
  end

  # private

  # def restaurant
  #   @restaurant_image = ""
  #   if @restaurant.cuisine == "Mexican"
  #     @restaurant_image << "https://source.unsplash.com/Y0zbn9lPCEU"
  #   elseif(@restaurant.cuisine == "Italian")
  #     @restaurant_image << "https://source.unsplash.com/MqT0asuoIcU"
  #   else
  #     @restaurant_image << "https://source.unsplash.com/Y11iTVE2DFA"
  #   end
  # end
end
