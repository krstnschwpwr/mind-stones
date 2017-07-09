class CreateMyDays < ActiveRecord::Migration[5.1]
  def change
    create_table :my_days do |t|
      t.text :reflection

      t.timestamps
    end
  end
end
