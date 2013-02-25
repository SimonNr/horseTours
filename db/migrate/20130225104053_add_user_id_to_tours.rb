class AddUserIdToTours < ActiveRecord::Migration
  def change
  	add_column :tours, :creator_id, :integer
  end
end
