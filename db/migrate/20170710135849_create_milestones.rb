class CreateMilestones < ActiveRecord::Migration[5.1]
  def change
    create_table :milestones do |t|
      t.string :description
      t.boolean :done
      t.integer :task_id

      t.timestamps
    end
  end
end
