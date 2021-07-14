class AddChefColumnToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :chef_name, :string
    add_column :restaurants, :chef_bio, :text
  end
end
