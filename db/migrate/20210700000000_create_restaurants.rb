class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :cuisine
      t.float :price
      t.text :description
      t.float :average_rating
      t.string :mood

      t.timestamps
    end
  end
end
