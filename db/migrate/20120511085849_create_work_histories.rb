class CreateWorkHistories < ActiveRecord::Migration
  def change
    create_table :work_histories do |t|
      t.string :company_name
      t.date :start_date
      t.date :end_date
      t.string :job_description

      t.timestamps
    end
  end
end
