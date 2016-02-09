class ChangeDoneInTasks < ActiveRecord::Migration
  def change
    rename_column :tasks, :Done, :done
  end
end
