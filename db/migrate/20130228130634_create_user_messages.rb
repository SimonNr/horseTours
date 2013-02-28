class CreateUserMessages < ActiveRecord::Migration
  def change
    create_table :user_messages do |t|
      t.integer :id
      t.integer :user_id
      t.integer :message_id

      t.timestamps
    end
  end
end
