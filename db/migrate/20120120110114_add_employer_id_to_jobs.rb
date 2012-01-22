class AddEmployerIdToJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :employer_id, :integer
  	add_index :jobs, :employer_id
  end
end
