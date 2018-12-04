class ToolMatch < ApplicationRecord
  # Direct associations

  belongs_to :beans,
             :class_name => "Bean"

  # Indirect associations

  # Validations

end
