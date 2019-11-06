class MeteDb < ApplicationRecord
  self.abstract_class = true
  establish_connection(:mete_db)
end

