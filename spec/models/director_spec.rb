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
    category = Category.new(:name => "Sci-Fi")
    category.save
    director = Director.new(:first_name => "Jan", :last_name => "Kowalski")
    director.save
    movie1 = Movie.new(:title => "Movie 1", :category => category, :director => director)
    movie1.save
    movie2 = Movie.new(:title => "Movie 2", :category => category, :director => director)
    movie2.save
    expect(director.movies).to eq([movie1, movie2])
  end
end
