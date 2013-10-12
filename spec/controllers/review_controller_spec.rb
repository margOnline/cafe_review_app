require 'spec_helper'

describe ReviewsController do

  it 'assigns reviews to an instance variable' do
    get :index
    Review.create!(post: 'average cafe', rating: 3)
    expect(assigns[:reviews].count).to be > 0
  end

  xit 'saves a new review' do
    @reviews = Review.all
    lambda {Review.create!(post: 'excellent cafe', rating: 4)
      }.should change(@reviews, :count).by(1)
  end

end
