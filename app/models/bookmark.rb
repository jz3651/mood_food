class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant, touch: true
  validates_uniqueness_of :user_id, scope: [ :restaurant_id ]
end
