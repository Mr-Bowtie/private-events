class AddForeignKeyToUsersEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :users_events, :attendee_id, :integer
    add_column :users_events, :event_id, :integer
  end
end
