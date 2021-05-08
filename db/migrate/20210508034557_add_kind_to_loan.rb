class AddKindToLoan < ActiveRecord::Migration[6.1]
  def change
    add_column :loans, :kind, :integer
  end
end
