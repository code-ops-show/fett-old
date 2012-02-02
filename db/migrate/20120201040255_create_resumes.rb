class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :nationality
      t.string :status
      t.string :language

      t.timestamps
    end
  end
end
