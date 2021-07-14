class AddOverallRatingToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :overall_rating, :integer, default:0
  end
end
