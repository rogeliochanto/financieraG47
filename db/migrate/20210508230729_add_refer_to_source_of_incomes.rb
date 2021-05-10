class AddReferToSourceOfIncomes < ActiveRecord::Migration[6.1]
  def change
    add_reference :source_of_incomes, :user, null: false, foreign_key: true
  end
end
