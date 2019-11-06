class AccountDb < ApplicationRecord
  self.abstract_class = true
  establish_connection(:account_db)
end

