class CreateAverageIncomes < ActiveRecord::Migration[6.0]
  def change
    create_table :average_incomes do |t|
      t.integer :order
      t.string :rage

      t.timestamps
    end
  end
end
