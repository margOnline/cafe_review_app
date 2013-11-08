class Cafe < ActiveRecord::Base

  validates :name, presence: true
  validates :description, presence: true

  has_many :reviews
  has_many :tables

  def average_rating
    reviews.average('rating')
  end

end
