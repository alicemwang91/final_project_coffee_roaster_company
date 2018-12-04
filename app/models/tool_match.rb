class ToolMatch < ApplicationRecord
  # Direct associations

  belongs_to :tools,
             :class_name => "Tool"

  belongs_to :beans,
             :class_name => "Bean"

  # Indirect associations

  # Validations

end
