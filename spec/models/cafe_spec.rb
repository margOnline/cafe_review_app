require 'spec_helper'

describe Cafe do

let(:cafe){Cafe.new(name: 'Jen\'s Bakery', description: 'Fresh from the oven')}
  it 'has a name' do
    expect(cafe.name).to eq 'Jen\'s Bakery'
  end

  it 'has a description' do
    expect(cafe.description).to eq 'Fresh from the oven'
  end

  it 'should be invalid without a name' do
    cafe.name = nil
    expect(cafe).not_to be_valid
  end

  it 'should be valid with all fields present' do
    expect(cafe).to be_valid
  end

  it 'should be invalid without a description' do
    cafe.description = nil
    expect(cafe).not_to be_valid
  end
end