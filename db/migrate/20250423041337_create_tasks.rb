class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.string :description, null: false
      t.date :due_date, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
