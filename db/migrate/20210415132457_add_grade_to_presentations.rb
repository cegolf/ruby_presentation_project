class AddGradeToPresentations < ActiveRecord::Migration[6.0]
  def change
    add_column :presentations, :grade, :integer
  end
end
