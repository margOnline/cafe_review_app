require 'spec_helper'

describe CafesController do

  it 'assigns cafes to an instance variable' do
    get :index
    Cafe.create!(name: 'Cafe Nero', description: 'Coffee bar')
    expect(assigns[:cafes].count).to be > 0
  end

  it 'saves a new cafe' do
    @cafes = Cafe.all
    lambda {Cafe.create!(name: 'Cafe Nero', description: 'Coffee bar')
      }.should change(@cafes, :count).by(1)
  end

end



