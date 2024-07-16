class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name, null: false, limit: 50
      t.string :username, null: false, limit: 50
      t.integer :rank, null: false, default: 0

      t.timestamps
    end
    

  end
end
