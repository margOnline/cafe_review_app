require 'spec_helper'

describe 'home page' do

  it 'displays a title' do
    visit '/'
    expect(page).to have_content 'Cafe Review'
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

  it 'links to a cafe page' do
    click_link('See reviews')
    expect(page).to have_content('Reviews')
  end


end