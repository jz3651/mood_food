class Restaurant < ApplicationRecord
  has_many :bookmarks
  has_many :reviews
  acts_as_taggable_on :moods
end
