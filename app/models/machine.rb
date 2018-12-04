class Machine < ApplicationRecord
  # Direct associations

  has_many   :beans,
             :foreign_key => "recommended_machine_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
