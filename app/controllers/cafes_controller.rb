class CafesController < ApplicationController

  def index
    @cafes = Cafe.all
  end

  def new
    @cafe=Cafe.new
  end

  def create
    @cafe = Cafe.new params[:cafe].permit(:name, :description)
    if @cafe.save
        redirect_to '/' 
    else
      render 'new'
    end
  end

end

