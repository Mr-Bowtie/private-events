class AlterColumnsInUsersInvitations < ActiveRecord::Migration[7.0]
  def change
    remove_column(:users_invitations, :event_id)
    add_column(:users_invitations, :invitation_id, :integer)
  end
end
