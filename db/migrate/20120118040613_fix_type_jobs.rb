class FixTypeJobs < ActiveRecord::Migration
  def change
  	change_column :jobs, :salary, :string
  	remove_column :jobs, :position
  end
end
