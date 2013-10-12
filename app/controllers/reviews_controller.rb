class ReviewsController < ApplicationController

  before_action :find_cafe

  def index
    @reviews = Review.all.where(:cafe_id => @cafe.id)
  end

  def new
    @review = Review.new(:cafe_id => @cafe.id)
    @review_count = Review.count + 1
    @cafes = Cafe.order('position ASC')
  end

  def create
    @review = Review.new params[:review].permit(:post, :rating)
    if @review.save
      flash[:notice] = 'Review added'
      redirect_to(:action => 'index', :cafe_id => @review.cafe_id)
    else
      render 'new'
    end
  end

  def edit

  end

  def delete
    
  end

  private
    
    def find_cafe
      if params[:cafe_id]
        @cafe = Cafe.find_by_id(params[:cafe_id])
      end
    end

end

