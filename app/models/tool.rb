class Tool < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  has_many   :tool_matches,
             :foreign_key => "tools_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :beans,
             :through => :tool_matches,
             :source => :beans

  # Validations

end
