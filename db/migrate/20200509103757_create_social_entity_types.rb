class CreateSocialEntityTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :social_entity_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
