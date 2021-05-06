class RepairTermToLoans < ActiveRecord::Migration[6.1]
  def change
    remove_column :loans, :term
    add_column :loans, :term, :integer
  end
end
