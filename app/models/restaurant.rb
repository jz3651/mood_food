class Restaurant < ApplicationRecord
  has_many :bookmarks
  has_many :reviews
end
