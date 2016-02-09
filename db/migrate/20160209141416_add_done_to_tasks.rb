class AddDoneToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :Done, :string
  end
end
