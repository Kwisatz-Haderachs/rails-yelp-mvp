class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show

  end

  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
      else
         render :edit
      end
    end
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    respond_to do |format|
      if @restaurant.save
        redirect_to restaurant, notice: 'Restaurant was successfully created.'
      else
        render :new
      end
    end
  end

  def edit
  end

  def destroy
    redirect_to restaurants_path(@restaurant), notice: "It's been deleted!!"
  end

  def new
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number, :rating)
  end
end
