class CreateDistricts < ActiveRecord::Migration[6.0]
  def change
    create_table :districts do |t|
      t.references :city, null: false, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
