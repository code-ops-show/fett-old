class AddColumnBirthdateToResumes < ActiveRecord::Migration
  def change
  	add_column :resumes, :dateofbirth, :date
  end
end
