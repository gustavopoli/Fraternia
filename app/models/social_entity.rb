class SocialEntity < ApplicationRecord
  belongs_to :social_entity_type
  belongs_to :social_entity_status
  belongs_to :district
  belongs_to :city

  def name
    "#{social_name}"
  end
end
