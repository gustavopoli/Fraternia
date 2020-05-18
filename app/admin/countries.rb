ActiveAdmin.register Country do

  menu parent: "Configuração", priority: 19

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :code_number, :code_string, :name
  #
  # or
  #
  permit_params do
    permitted = [:code_number, :code_string, :name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  end

  
end
