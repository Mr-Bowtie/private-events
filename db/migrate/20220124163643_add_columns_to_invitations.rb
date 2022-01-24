class AddColumnsToInvitations < ActiveRecord::Migration[7.0]
  def change
    add_column :invitations, :recipient_id, :integer
    add_column :invitations, :event_id, :integer
  end
end
