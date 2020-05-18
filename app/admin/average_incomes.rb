ActiveAdmin.register AverageIncome do

  menu parent: "Configuração", priority: 35
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :order, :rage
  #
  # or
  #
  # permit_params do
  #   permitted = [:order, :rage]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
