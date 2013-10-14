class Cafe < ActiveRecord::Base

  validates :name, presence: true
  validates :description, presence: true

  has_many :reviews

  def average_rating
    reviews.average('rating')
  end

end
