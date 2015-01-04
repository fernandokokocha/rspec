class Movie < ActiveRecord::Base
  belongs_to :director
  belongs_to :category

  validates :title, :presence => true
  validates :director, :presence => true
  validates :category, :presence => true
end
