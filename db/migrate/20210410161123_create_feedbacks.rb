class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.text :content
      t.string :submitted_by
      t.integer :presentation_id

      t.timestamps
    end
  end
end
