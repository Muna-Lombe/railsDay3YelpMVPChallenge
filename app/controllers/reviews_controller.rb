class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]
  before_action :set_review, only: [:edit, :update, :destroy]

  def index

  end

  def new
    @review = Review.new
    
  end
  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to @restaurant, notice: 'Review Added!.'
    else
      render :new
    end
  end
  def edit
  end

  def update
    if @review.update(review_params)
      @restaurant = @review.restaurant
      redirect_to @restaurant
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    @restaurant = @review.restaurant
    redirect_to @restaurant
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
  
  
  def set_review
      @review = Review.find(params[:id])
  end

end
