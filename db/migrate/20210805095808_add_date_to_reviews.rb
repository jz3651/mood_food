class AddDateToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :reviewdate, :date
  end
end
