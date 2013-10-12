class AddCafeIdtoReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :cafe, index: true
  end
end
