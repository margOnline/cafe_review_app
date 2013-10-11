class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :post
      t.integer :rating

      t.timestamps
    end
  end
end
