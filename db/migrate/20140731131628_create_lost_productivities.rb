class CreateLostProductivities < ActiveRecord::Migration
  def change
    create_table :lost_productivities do |t|
      t.string :problem_category
      t.string :description
      t.date :creation_date
      t.integer :total_employees_affected
      t.float :hours_lost_per_employee
      t.float :total_hours_lost_employees

      t.timestamps
    end
  end
end
