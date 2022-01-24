class CreateUsersInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :users_invitations do |t|
      t.integer :recipient_id
      t.integer :event_id

      t.timestamps
    end
  end
end
