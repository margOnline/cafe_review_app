require 'spec_helper'

describe 'Review page' do

  it 'displays a review for a cafe' do
    visit '/reviews/'
    expect(page).to have_content 'Reviews'
  end

  it 'shows a link to add a new review' do
    visit '/reviews/'
    expect(page).to have_content 'Add a review'
  end

  xit 'redirects a user to a form to add a review' do

  end




end