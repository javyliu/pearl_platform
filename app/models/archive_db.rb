class ArchiveDb < ApplicationRecord
  self.abstract_class = true
  establish_connection(:archive_db)
end

