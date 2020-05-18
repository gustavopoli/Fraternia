class AssistedAddress < ApplicationRecord
  belongs_to :district
  belongs_to :city

  has_many :assisted_residents
  accepts_nested_attributes_for :assisted_residents, :allow_destroy => true

  has_many :assisted_vulnerabilities
  accepts_nested_attributes_for :assisted_vulnerabilities, :allow_destroy => true

  has_many :assisted_phones
  accepts_nested_attributes_for :assisted_phones, :allow_destroy => true

  has_many :assisted_benefits
  accepts_nested_attributes_for :assisted_benefits, :allow_destroy => true
end
