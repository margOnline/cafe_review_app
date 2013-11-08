class Table < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :bookings
  belongs_to :cafe
end
