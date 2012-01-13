class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :position
      t.text :description
      t.string :job_type
      t.integer :salary
      t.string :job_apply

      t.timestamps
    end
  end
end
