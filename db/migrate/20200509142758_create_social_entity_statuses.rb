class CreateSocialEntityStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :social_entity_statuses do |t|
      t.string :name
      t.boolean :is_active
      t.text :description

      t.timestamps
    end
  end
end
