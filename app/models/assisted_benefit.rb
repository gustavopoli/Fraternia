class AssistedBenefit < ApplicationRecord
  belongs_to :assisted_address
  belongs_to :benefit
end
