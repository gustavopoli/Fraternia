class AssistedPhone < ApplicationRecord
  belongs_to :assisted_address
  belongs_to :phone_type
end
