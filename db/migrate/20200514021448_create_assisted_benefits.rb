class CreateAssistedBenefits < ActiveRecord::Migration[6.0]
  def change
    create_table :assisted_benefits do |t|
      t.references :assisted_address, null: false, foreign_key: true
      t.references :benefit, null: false, foreign_key: true
      t.string :notes

      t.timestamps
    end
  end
end
