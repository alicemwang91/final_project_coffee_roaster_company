class Bean < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :recommended_machine,
             :class_name => "Machine"

  has_many   :tool_matches,
             :foreign_key => "beans_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :tools,
             :through => :tool_matches,
             :source => :tools

  # Validations

end
