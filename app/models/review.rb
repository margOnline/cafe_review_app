class Review < ActiveRecord::Base

  validates :post, presence: true
  validates :rating, presence: true

  belongs_to :cafe
end
