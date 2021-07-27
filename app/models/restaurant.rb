class Restaurant < ApplicationRecord
  has_many :bookmarks
  has_many :reviews
  acts_as_taggable_on :moods

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

end
