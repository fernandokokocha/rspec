require 'rails_helper'

RSpec.describe Category, :type => :model do
  it "is invalid without a name" do
    category = Category.new
    expect(category).not_to be_valid
  end

  it "has movies array" do
    category = Category.create(:name => "Sci-Fi")
    director = Director.create(:first_name => "Jan", :last_name => "Kowalski")
    movie1 = Movie.create(:title => "Movie 1", :category => category, :director => director)
    movie2 = Movie.create(:title => "Movie 2", :category => category, :director => director)
    expect(category.movies).to eq([movie1, movie2])
  end
end
