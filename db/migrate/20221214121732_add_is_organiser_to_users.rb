class AddIsOrganiserToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_organiser, :boolean
  end
end
