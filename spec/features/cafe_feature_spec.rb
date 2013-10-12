require 'spec_helper'

describe 'home page' do

  it 'displays a title' do
    visit '/'
    expect(page).to have_content 'Green Leaf Reviews'
  end

  it 'displays a list of cafes' do
    Cafe.create!(name: 'Cafe Nero', description: 'Coffee bar')
    visit '/'
    expect(page).to have_css('li')
  end

  it 'shows a link for a cafe' do
    Cafe.create!(name: 'Cafe Nero', description: 'Coffee bar')
    visit '/'
    expect(page).to have_css('a')
  end

  it 'shows a link to add a cafe' do
    visit '/'
    expect(page).to have_content 'Add +'
  end

  it 'redirects user to add cafe form when add link is clicked' do
    @cafe = Cafe.create!(name: 'Cafe Nero', description: 'Coffee bar')
    visit '/'
    click_link("Add +")
    page.should have_content('Add a new cafe')
  end

  it 'links to a cafe page' do
    Cafe.create!(name: 'Cafe Nero', description: 'Coffee bar')
    click_link('Cafe Nero')
    expect(page).to have_content('Reviews for Cafe Nero')
  end

end