class AddSocialRatingToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :social_rating, :integer
  end
end
