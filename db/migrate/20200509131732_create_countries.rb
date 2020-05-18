class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :code_number
      t.string :code_string
      t.string :name

      t.timestamps
    end
  end
end
