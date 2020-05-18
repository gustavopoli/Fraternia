class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.references :state, null: false, foreign_key: true
      t.string :name
      t.integer :population
      t.string :mayor
      t.string :social_worker

      t.timestamps
    end
  end
end
