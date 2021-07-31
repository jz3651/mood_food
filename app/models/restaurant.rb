class Restaurant < ApplicationRecord
  has_many :bookmarks
  has_many :reviews
  acts_as_taggable_on :moods
  
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def bookmarked_by(user)
    # bookmarks.pluck(:user_id).include?(user.id)
    Bookmark.find_by(user: user, restaurant: self)
  end
  
  include PgSearch::Model
  pg_search_scope :search_by_name_and_cuisine,
    against: [ :name, :cuisine, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
