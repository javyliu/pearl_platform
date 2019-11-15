class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  establish_connection(:pipstat_db)
  # connects_to datatase: {writing: :pipstat_db, reading: :pipstat_db }
end
