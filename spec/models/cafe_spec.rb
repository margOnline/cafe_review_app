require 'spec_helper'

describe Cafe do

  let(:cafe){Cafe.new(id: 1, name: 'Jen\'s Bakery', description: 'Fresh from the oven')}
  let!(:review1){FactoryGirl.create(:review, :good_post, :rating_4, cafe: cafe)}
  let!(:review2){FactoryGirl.create(:review, :excellent_post, :rating_5, cafe: cafe)}
  
  it 'has a name' do
    expect(cafe.name).to eq 'Jen\'s Bakery'
  end

  it 'has a description' do
    expect(cafe.description).to eq 'Fresh from the oven'
  end

  it 'is invalid without a name' do
    cafe.name = nil
    expect(cafe).not_to be_valid
  end

  it 'is valid with all fields present' do
    expect(cafe).to be_valid
  end
 
  it 'is invalid without a description' do
    cafe.description = nil
    expect(cafe).not_to be_valid
  end

  it 'displays an average rating' do
    expect(cafe.average_rating).to eq 4.5
  end
end