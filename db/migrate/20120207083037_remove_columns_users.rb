class RemoveColumnsUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :address
  	remove_column :users, :url
  end
end
