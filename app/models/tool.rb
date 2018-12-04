class Tool < ApplicationRecord
  # Direct associations

  has_many   :tool_matches,
             :foreign_key => "tools_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
