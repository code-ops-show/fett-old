class AddReferenceEmployeeToResumes < ActiveRecord::Migration
  def change
  	add_column :resumes, :employee_id, :integer
  end
end
