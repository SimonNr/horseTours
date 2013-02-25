class AddUserIdToTours < ActiveRecord::Migration
  def change
  	add_column :tours, :creatorID, :integer
  end
end
