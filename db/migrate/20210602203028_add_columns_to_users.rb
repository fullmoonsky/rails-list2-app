class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string, null: false, default: ""
    add_column :users, :role, :integer, default: 0
  end
end
