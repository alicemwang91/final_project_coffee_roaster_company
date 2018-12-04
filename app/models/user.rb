class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :blogposts,
             :dependent => :nullify

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  has_many   :bookmarked_blogposts,
             :through => :bookmarks,
             :source => :blogpost

  # Validations

end
