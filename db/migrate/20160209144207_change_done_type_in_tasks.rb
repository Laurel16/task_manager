class ChangeDoneTypeInTasks < ActiveRecord::Migration
  def change
    change_column :tasks, :done, :boolean
  end
end
