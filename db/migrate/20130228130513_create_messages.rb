class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :id
      t.integer :from
      t.integer :to
      t.text :content
      t.text :subject

      t.timestamps
    end
  end
end
