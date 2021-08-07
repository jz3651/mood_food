class AddRushRatingToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :rush_rating, :integer
  end
end
