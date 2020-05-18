class CreateAssistedAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :assisted_addresses do |t|
      t.string :name
      t.string :address
      t.string :number
      t.references :district, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.date :first_assistance
      t.date :last_assistance
      t.date :first_interview
      t.date :last_interview

      t.timestamps
    end
  end
end
