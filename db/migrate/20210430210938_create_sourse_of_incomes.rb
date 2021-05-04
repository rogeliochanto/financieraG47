class CreateSourseOfIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :sourse_of_incomes do |t|
      t.integer :salary_income
      t.integer :independent
      t.integer :mixed_income
      t.integer :expenses
      t.integer :difference
      t.boolean :approval

      t.timestamps
    end
  end
end
