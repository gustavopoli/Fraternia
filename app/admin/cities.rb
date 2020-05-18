ActiveAdmin.register City do

  menu parent: "Configuração", priority: 21
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :state_id, :name, :population, :mayor, :social_worker
  #
  # or
  #
  permit_params do
    permitted = [:state_id, :name, :population, :mayor, :social_worker]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  end
  
end
