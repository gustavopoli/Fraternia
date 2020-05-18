ActiveAdmin.register AssistedResident do

  menu parent: "Assistência", priority: 10
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :assisted_address_id, 
    :full_name, :cpf,
    :nick_name, :cell_phone, :phone, 
    :email, :facebook, :instagram, 
    :born_date, :is_employed, :is_receiving
  #
  # or
  #
  # permit_params do
  #   permitted = [:assisted_address_id, :full_name, :nick_name, :cell_phone, :phone, :email, :facebook, :instagram, :born_date, :is_employed, :is_receiving]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
