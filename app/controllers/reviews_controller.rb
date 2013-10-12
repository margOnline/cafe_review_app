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
    @review = Review.new(params[:review])
    if @review.save
      flash[:notice] = 'Review added'
      redirect_to(:action => 'list', :cafe_id => @cafe.review_id)
    end
  end

  def edit

  end

  def update
    @review = Review.find(params[:id])
    if @review.update_attributes(params[:review])
      flash[:notice] = 'Review updated'
      redirect_to(:action => 'show', :id => @review.id, :cafe_id => @review.cafe_id)
    else
      @review.count = Review.count
      @cafes = Cafe.order('position ASC')
      render('edit')
    end
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

