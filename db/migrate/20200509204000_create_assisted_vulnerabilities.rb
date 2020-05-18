class CreateAssistedVulnerabilities < ActiveRecord::Migration[6.0]
  def change
    create_table :assisted_vulnerabilities do |t|
      t.references :assisted_address, null: false, foreign_key: true
      t.references :social_vulnerability_type, null: false, foreign_key: true
      t.references :social_vulnerability_score, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
