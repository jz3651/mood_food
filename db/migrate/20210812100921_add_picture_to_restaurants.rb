class AddPictureToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :picture, :string
  end
end
