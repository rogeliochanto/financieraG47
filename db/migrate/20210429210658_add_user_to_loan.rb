class AddUserToLoan < ActiveRecord::Migration[6.1]
  def change
    add_reference :loans, :user, null: false, foreign_key: true
  end
end
