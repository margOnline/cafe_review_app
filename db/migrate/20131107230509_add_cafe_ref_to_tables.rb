class AddCafeRefToTables < ActiveRecord::Migration
  def change
    add_reference :tables, :cafe, index: true
  end
end
