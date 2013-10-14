require 'spec_helper'

describe ReviewsController do

  it 'assigns reviews to an instance variable' do
    Review.create!(post: 'average cafe', rating: 3, cafe_id: 1)
    get(:index, {'id' => 1}, nil, nil)
    expect(assigns[:reviews].count).to be > 0
  end

  it 'saves a new review' do
    @reviews = Review.all
    lambda {Review.create!(post: 'excellent cafe', rating: 4)
      }.should change(@reviews, :count).by(1)
  end

end
