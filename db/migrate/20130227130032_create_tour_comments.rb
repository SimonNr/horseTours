class CreateTourComments < ActiveRecord::Migration
  def change
    create_table :tour_comments do |t|
      t.integer :tour_id
      t.integer :user_id
      t.text :comment

      t.timestamps
    end
  end
end
