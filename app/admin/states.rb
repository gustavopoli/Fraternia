ActiveAdmin.register State do

  menu parent: "Configuração", priority: 20
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :country_id, :code, :name
  #
  # or
  #
  permit_params do
    permitted = [:country_id, :code, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  end
  
end
