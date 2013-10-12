class CafesController < ApplicationController

  def index
    @cafes = Cafe.all
  end

  def new
    @cafe = Cafe.find(params[:id]) 
  end

end
