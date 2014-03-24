class RemoveDueDateFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :due_date, :datetime
  end

  # def up
  #   remove_column :tasks, :due_date
  # end

  # def down
  #   add_column :tasks, :due_date, :datetime
  # end
end
