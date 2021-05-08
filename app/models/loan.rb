class Loan < ApplicationRecord
  belongs_to :user
  enum kind: [:personal, :vehicle, :real_state]
end
