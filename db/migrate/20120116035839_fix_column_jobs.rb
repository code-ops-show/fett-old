class FixColumnJobs < ActiveRecord::Migration
  def change
  	rename_column :jobs, :job_type, :type
  end
end
