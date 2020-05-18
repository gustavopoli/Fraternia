class CreateAssistedResidents < ActiveRecord::Migration[6.0]
  def change
    create_table :assisted_residents do |t|
      t.references :assisted_address, null: false, foreign_key: true
      t.string :full_name
      t.string :nick_name
      t.string :cell_phone
      t.string :phone
      t.string :email
      t.string :facebook
      t.string :instagram
      t.date :born_date
      t.boolean :is_employed
      t.boolean :is_receiving

      t.timestamps
    end
  end
end
