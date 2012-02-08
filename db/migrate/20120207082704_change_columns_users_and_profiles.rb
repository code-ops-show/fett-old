class ChangeColumnsUsersAndProfiles < ActiveRecord::Migration
  def up
    add_column :profiles, :name, :string
    add_column :profiles, :telephone, :string
    add_column :profiles, :address, :string
    add_column :profiles, :url, :string
  end
end
