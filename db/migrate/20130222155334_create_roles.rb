class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.String :role

      t.timestamps
    end
  end
end
