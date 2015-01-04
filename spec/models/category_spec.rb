require 'rails_helper'

RSpec.describe Category, :type => :model do
  it "is invalid without a name" do
    category = Category.new
    expect(category).not_to be_valid
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
    expect(category.movies).to eq([movie1, movie2])
  end
end
