class ReviewsController < ApplicationController

  def index
    @reviews = Review.find(params[:cafe_id])
  end

end
