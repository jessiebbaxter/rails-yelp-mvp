class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
    	redirect_to restaurant_path(@restaurant)
		else 
			render :new
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

end

# A visitor can see the list of all restaurants.
# He can add a new restaurant, and be redirected to the show view of that 
# new restaurant.
# He can see the details of a restaurant, with all the reviews related to 
# the restaurant.
# He can add a new review to a restaurant


# Restaurants - index, new, create, show
# Reviews - index, show, new, create