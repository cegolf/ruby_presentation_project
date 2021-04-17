class RemoveGroupFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :group, :integer
  end
end
