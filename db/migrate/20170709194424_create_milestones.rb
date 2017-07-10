class CreateMilestones < ActiveRecord::Migration[5.1]
  def change
    create_table :milestones do |t|
      t.string :description
      t.boolean :done
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
