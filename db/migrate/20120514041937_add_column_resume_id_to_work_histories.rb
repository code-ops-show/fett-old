class AddColumnResumeIdToWorkHistories < ActiveRecord::Migration
  def change
    add_column :work_histories, :resume_id, :integer
  end
end
