class ReviewsController < ApplicationController

  before_action :find_cafe

  def index
    @reviews = Review.all.where(:cafe_id => @cafe.id)
  end

  def new
    @review = Review.new(:cafe_id => @cafe.id)

  end

  def create
    @review = Review.new(params[:review].permit(:cafe_id, :post, :rating))
    @review.cafe = @cafe
     if @review.save
      flash[:notice] = 'Review added'
      redirect_to(:action => 'index', :cafe_id => @cafe.id)
    else
      render 'new'
    end
  end

  private
    
    def find_cafe
      if params[:cafe_id]
        @cafe = Cafe.find_by_id(params[:cafe_id])
      end
    end

end

