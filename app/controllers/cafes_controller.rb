class CafesController < ApplicationController

  def index
    @cafes = Cafe.all
  end

  def new
    @cafe=Cafe.new
  end

  def create
    @cafe = Cafe.create(params[:id]).permit(:name, :description, :review_id)
    redirect_to '/' 
  end

end

