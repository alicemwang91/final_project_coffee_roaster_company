class Bean < ApplicationRecord
  # Direct associations

  has_many   :tool_matches,
             :foreign_key => "beans_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
