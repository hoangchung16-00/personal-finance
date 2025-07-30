class Account < ApplicationRecord
  belongs_to :user

  enum :account_type, { cash: 0, credit_card: 1, bank: 2 }
end
