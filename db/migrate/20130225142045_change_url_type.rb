class ChangeUrlType < ActiveRecord::Migration
  def change
  	remove_column :tours, :url
  	add_column :tours, :url, :text
  end
end
