class CreateTours < ActiveRecord::Migration
  def self.up
    create_table :tours do |t|
      t.string :title
      t.string :teaser
      t.string :difficulty
      t.integer :days
      t.integer :hours
      t.integer :minutes
      t.text :description
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :tours
  end
end