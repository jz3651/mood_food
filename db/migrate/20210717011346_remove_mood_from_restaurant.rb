class RemoveMoodFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :mood, :string
  end
end
