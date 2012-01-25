class AddColumnsUser < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :telephone, :string
  	add_column :users, :address, :string
  	add_column :users, :url, :string
  end
end
