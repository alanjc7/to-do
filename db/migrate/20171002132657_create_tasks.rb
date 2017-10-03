class CreateTasks < ActiveRecord::Migration[5.0]
  def up
    create_table :tasks do |t|
      t.text :description
      t.boolean :complete

      t.timestamps
    end
  end

  def down
    drop_table :tasks
  end
end
