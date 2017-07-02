class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :deadline
      t.integer :priority
      t.integer :duration

      t.timestamps
    end
  end
end
