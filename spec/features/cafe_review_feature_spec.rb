require 'spec_helper'

describe 'home page' do

  it 'displays a title' do
    visit '/'
    expect(page).to have_content 'Cafe Review'
  end

  it 'displays a list of cafes' do
    visit '/'
    expect(page).to have_css('li')
  end


end