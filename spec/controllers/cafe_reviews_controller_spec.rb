require 'spec_helper'

describe CafeReviewsController do

  it 'should assign cafes to an instance variable' do
    get :index
    Cafe.create!(name: 'Cafe Nero', description: 'Coffee bar')
    expect(assigns[:cafes].count).to be > 0
  end


end