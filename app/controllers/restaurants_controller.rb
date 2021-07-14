class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :chef]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
    @restaurants.each do |r|
      r["overall_rating"] = ((r.reviews.map{|review| review.rating}.sum)/r.reviews.count).round()
    end
  end

  def top
    @restaurants = Restaurant.where("overall_rating >= 3").limit(5)
  end

  # GET /restaurants/1
  def show
    r = @restaurant
    r["overall_rating"] = ((r.reviews.map{|review| review.rating}.sum)/r.reviews.count).round()
  end

  def chef
    # @restaurant -> already available because we added to the before action
    
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
      # redirect_to restaurants_urlt, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category, :chef_name, :chef_bio, :overall_rating)
  end
end
