ActiveAdmin.register SocialEntity do

  menu parent: "Entidades", priority: 5

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :register_name, :register_number, :social_name, :social_entity_type_id, :social_entity_status_id, :address, :number, :district_id, :city_id, :referential_point, :phones, :emails, :web_site, :business_hours, :fundation_date, :closing_date
  #
  # or
  #
  permit_params do
    permitted = [:register_name, :register_number, :social_name, :social_entity_type_id, :social_entity_status_id, :address, :number, :district_id, :city_id, :referential_point, :phones, :emails, :web_site, :business_hours, :fundation_date, :closing_date]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  end

  form do |f|
    f.inputs "Entidade Social" do
      f.input :register_name
      f.input :register_number
      f.input :social_name
      f.input :social_entity_type_id, :label => 'Tipo Entidade', :as => :select, :collection => SocialEntityType.all.map{|u| ["#{u.name}", u.id]}
      f.input :social_entity_status_id, :label => 'Status Entidade', :as => :select, :collection => SocialEntityStatus.all.map{|u| ["#{u.name}", u.id]}
      f.input :address
      f.input :number
      f.input :district_id, :label => 'Bairro', :as => :select, :collection => District.all.map{|u| ["#{u.name}", u.id]}
      f.input :city_id, :label => 'Cidade', :as => :select, :collection => City.all.map{|u| ["#{u.name}", u.id]}
      f.input :referential_point
      f.input :phones
      f.input :emails
      f.input :web_site
      f.input :business_hours
      f.input :fundation_date, :as => :string, :input_html => {:class => 'datepicker hasDatePicker'}
      f.input :closing_date
    end
    actions
  end
  
end
