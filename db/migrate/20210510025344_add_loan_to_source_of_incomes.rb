class AddLoanToSourceOfIncomes < ActiveRecord::Migration[6.1]
  def change
    add_reference :source_of_incomes, :loan, null: false, foreign_key: true
  end
end
