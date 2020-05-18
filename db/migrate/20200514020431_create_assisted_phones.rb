class CreateAssistedPhones < ActiveRecord::Migration[6.0]
  def change
    create_table :assisted_phones do |t|
      t.references :assisted_address, null: false, foreign_key: true
      t.references :phone_type, null: false, foreign_key: true
      t.string :number
      t.string :notes

      t.timestamps
    end
  end
end
