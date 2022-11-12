class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :assigned_to
      t.date :date
      t.string :status
    
      t.timestamps
    end
  end
end
