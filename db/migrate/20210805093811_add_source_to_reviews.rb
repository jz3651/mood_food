class AddSourceToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :source, :string
  end
end
