require 'spec_helper'

describe 'review' do 

  it let(:review){Review.new(post: 'Delicious chocolate chip cookies', rating: 5)}
  
  it 'has a post' do
    expect(review.post).to eq 'Delicious chocolate chip cookies'
  end

  it 'has a rating' do
    expect(review.rating).to eq 5
  end

  it 'should be invalid without a post' do
    review.post = nil
    expect(review).not_to be_valid
  end

  it 'should be valid with all fields present' do
    expect(review).to be_valid
  end

  it 'should be invalid without a rating' do
    review.rating = nil
    expect(review).not_to be_valid
  end
  
end