class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :due_date
      t.integer :priority
      t.text :comment
      t.float :progress

      t.timestamps
    end
  end
end
