class AddMoodRatingToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :mood_rating, :integer
  end
end
