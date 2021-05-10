class Loan < ApplicationRecord
  belongs_to :user
  has_one :source_of_income
  enum kind: [:personal, :vehicle, :real_state]
end
