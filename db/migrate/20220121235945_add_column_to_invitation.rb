class AddColumnToInvitation < ActiveRecord::Migration[7.0]
  def change
    add_column :invitations, :invite_creator_id, :integer
  end
end
