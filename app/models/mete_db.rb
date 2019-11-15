class MeteDb < ApplicationRecord
  self.abstract_class = true
  establish_connection(:metedata_db)
  # connects_to  datatase: {writing: :metedata_db, reading: :metedata_db}
end


