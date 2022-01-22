class AddColumnToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :visibility, :string
  end
end
