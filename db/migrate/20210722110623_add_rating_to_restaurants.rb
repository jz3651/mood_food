class AddRatingToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :rating, :float
  end
end
