class ReviewsController < ApplicationController

  def index
    @reviews = Review.order('reviews.position ASC').where(:cafe_id => @cafe.id)
  end

  def new
    @review = Review.new(:cafe_id => @cafe.id)
    @review_count = Review.count + 1
    @cafes = Cafe.order('position ASC')
  end


  private
    
    def find_cafe
      if params[:cafe_id]
        @cafe = Cafe.find_by_id(params[:cafe_id])
      end
    end

  end

end
