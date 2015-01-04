require 'rails_helper'

RSpec.describe Movie, :type => :model do
  it "is invalid without a title" do
    movie = Movie.new(:category_id => 1, :director_id => 1)
    expect(movie).not_to be_valid
  end

  it "is invalid without a director_id" do
    movie = Movie.new(:title => "a movie", :category_id => 1)
    expect(movie).not_to be_valid
  end

  it "is invalid without a category_id" do
    movie = Movie.new(:title => "a movie", :director_id => 1)
    expect(movie).not_to be_valid
  end
end
