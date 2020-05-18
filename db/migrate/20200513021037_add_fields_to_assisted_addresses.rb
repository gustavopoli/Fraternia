class AddFieldsToAssistedAddresses < ActiveRecord::Migration[6.0]
  def change
    add_column :assisted_addresses, :cpf, :string
    add_column :assisted_addresses, :profession_id, :integer
    add_column :assisted_addresses, :marital_status_id, :integer
    add_column :assisted_addresses, :external_contact, :string
    add_column :assisted_addresses, :average_income_id, :integer
    add_column :assisted_addresses, :residence_status_id, :integer
    add_column :assisted_addresses, :born_date, :date
    add_column :assisted_addresses, :naturalness, :string
    add_column :assisted_addresses, :spouse_name, :string
    add_column :assisted_addresses, :spouse_born_date, :date
    add_column :assisted_addresses, :spouse_naturalness, :string
    add_column :assisted_addresses, :spouse_profession_id, :integer
    add_column :assisted_addresses, :beginning_housing, :date
  end
end
