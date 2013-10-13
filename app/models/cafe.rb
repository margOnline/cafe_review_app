class Cafe < ActiveRecord::Base

  validates :name, presence: true
  validates :description, presence: true

  has_many :reviews

  def average_rating_for(cafe)
    @average = average = Review.where(:cafe_id => cafe).average('rating')
  end

end
