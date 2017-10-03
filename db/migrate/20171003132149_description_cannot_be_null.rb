class DescriptionCannotBeNull < ActiveRecord::Migration[5.1]
  def up
    change_column :tasks, :description, :text, :null => false
  end

  def down
    change_column :tasks, :description, :text, :null => true
  end
end
