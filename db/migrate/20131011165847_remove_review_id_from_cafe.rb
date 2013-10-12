class RemoveReviewIdFromCafe < ActiveRecord::Migration
  
  def change
    
    change_table :cafes do |t|
      t.remove :review_id
    end

  end
end
