require 'rspec'
require './lib/places'

describe Place do
  before do
    @test_place = Place.new('Detroit', "My home town")
  end
  describe '#name' do
    it 'lists the name of the place' do
      expect(@test_place.name).to eq 'Detroit'
    end
  end

  describe '#description' do
    it 'lists the description of the place' do
      expect(@test_place.description).to eq 'My home town'
    end
  end

  describe ".all" do
    it "adds a place and description to a list of places" do
      expect(Place.all).to eq []
    end

  end


end
