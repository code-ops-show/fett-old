class AddEmployerReferenceToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :employer_id, :integer

  end
end
