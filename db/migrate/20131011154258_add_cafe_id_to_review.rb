class AddCafeIdToReview < ActiveRecord::Migration
  
def change
    add_reference :cafes, :review, index: true
  end

end
