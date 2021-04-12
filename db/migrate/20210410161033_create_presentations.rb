class CreatePresentations < ActiveRecord::Migration[6.0]
  def change
    create_table :presentations do |t|
      t.integer :group
      t.string :title
      t.string :grade

      t.timestamps
    end
  end
end
