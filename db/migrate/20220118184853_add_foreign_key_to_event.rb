class AddForeignKeyToEvent < ActiveRecord::Migration[7.0]
  def change
    change_table :events do |t|
      t.integer :creator_id
    end
  end
end
