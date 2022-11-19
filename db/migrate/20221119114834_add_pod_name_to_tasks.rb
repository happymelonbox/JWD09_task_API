class AddPodNameToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :pod_name, :string
  end
end
