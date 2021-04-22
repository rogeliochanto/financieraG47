class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.integer :amount
      t.integer :interest
      t.date :term
      t.integer :fee

      t.timestamps
    end
  end
end
