class CreatePresentations < ActiveRecord::Migration[6.0]
  def change
    create_table :presentations do |t|
      t.string :topic
      t.datetime :date
      t.string :assigned_to
      t.timestamps
    end
  end
end
