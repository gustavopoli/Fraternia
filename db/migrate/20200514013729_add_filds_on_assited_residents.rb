class AddFildsOnAssitedResidents < ActiveRecord::Migration[6.0]
  def change
    add_column :assisted_residents, :cpf, :string
  end
end
