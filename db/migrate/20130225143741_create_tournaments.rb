class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :title
      t.string :category
      t.date :startDate
      t.date :endDate
      t.string :registrationOffice
      t.date :deadline
      t.text :information
      t.string :place
      t.integer :creator_id

      t.timestamps
    end
  end
end