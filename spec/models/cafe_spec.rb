require 'spec_helper'

describe 'cafe' do
  # let(:cafe) Cafe.new()
  it 'has a name' do
    cafe = FactoryGirl.create(:cafe)
    expect(cafe.name).to eq 'Jen\'s Bakery'
  end

  it 'has a description' do
    cafe = FactoryGirl.create(:cafe)
    expect(cafe.description).to eq 'Fresh from the oven'
  end



end