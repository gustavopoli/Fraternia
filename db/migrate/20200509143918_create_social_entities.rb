class CreateSocialEntities < ActiveRecord::Migration[6.0]
  def change
    create_table :social_entities do |t|
      t.string :register_name
      t.string :register_number
      t.string :social_name
      t.references :social_entity_type, null: false, foreign_key: true
      t.references :social_entity_status, null: false, foreign_key: true
      t.string :address
      t.string :number
      t.references :district, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.string :referential_point
      t.string :phones
      t.string :emails
      t.string :web_site
      t.string :business_hours
      t.date :fundation_date
      t.date :closing_date

      t.timestamps
    end
  end
end
