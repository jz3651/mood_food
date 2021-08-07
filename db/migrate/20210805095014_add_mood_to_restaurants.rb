class AddMoodToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :mood_name, :text
  end
end
