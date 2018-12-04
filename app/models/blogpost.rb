class Blogpost < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_many   :bookmarked_users,
             :through => :bookmarks,
             :source => :user

  # Validations

end
