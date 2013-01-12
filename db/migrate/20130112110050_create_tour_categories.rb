class CreateTourCategories < ActiveRecord::Migration
  def change
    create_table :tour_categories do |t|
      t.references :tour
      t.references :category

      t.timestamps
    end
    add_index :tour_categories, :tour_id
    add_index :tour_categories, :category_id
  end
end
