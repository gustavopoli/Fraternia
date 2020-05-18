class CreateSocialAssistanceTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :social_assistance_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
