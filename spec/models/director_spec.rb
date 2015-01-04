require 'rails_helper'

RSpec.describe Director, :type => :model do
  it "is invalid without a last_name" do
    director = Director.new(:first_name => "Jan")
    expect(director).not_to be_valid
  end

  it "is invalid without a first_name" do
    director = Director.new(:last_name => "Kowalski")
    expect(director).not_to be_valid
  end

  it "has movies array" do
    category = Category.create(:name => "Sci-Fi")
    director = Director.create(:first_name => "Jan", :last_name => "Kowalski")
    movie1 = Movie.create(:title => "Movie 1", :category => category, :director => director)
    movie2 = Movie.create(:title => "Movie 2", :category => category, :director => director)
    expect(director.movies).to eq([movie1, movie2])
  end
end
