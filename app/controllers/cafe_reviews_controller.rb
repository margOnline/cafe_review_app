class CafeReviewsController < ApplicationController

  def index
    @cafes - Cafe.all
  end

end
