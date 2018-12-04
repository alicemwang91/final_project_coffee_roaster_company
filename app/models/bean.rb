class Bean < ApplicationRecord
  # Direct associations

  belongs_to :recommended_machine,
             :class_name => "Machine"

  has_many   :tool_matches,
             :foreign_key => "beans_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
