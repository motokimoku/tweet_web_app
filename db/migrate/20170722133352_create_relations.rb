class CreateRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :relations do |t|
      t.integer :user_id
      t.integer :follow_id

      t.timestamps
      t.index [:user_id, :follow_id], unique: true
    end
  end
end
