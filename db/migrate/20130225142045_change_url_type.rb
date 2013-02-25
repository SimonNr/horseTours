class ChangeUrlType < ActiveRecord::Migration
  def change
  	change_column :tours, :url, :text
  end
end
