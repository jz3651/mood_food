class AddDateRatingToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :date_rating, :integer
  end
end
