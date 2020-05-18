ActiveAdmin.register AssistedAddress do

  menu parent: "Assistência", priority: 5

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  

  permit_params :name, 
                :address, 
                :number, 
                :district_id, 
                :city_id, 
                :first_assistance, 
                :last_assistance, 
                :first_interview, 
                :last_interview,
                :cpf, :profession_id, :marital_status_id, :external_contact, 
                :average_income_id, :residence_status_id,  :born_date, 
                :naturalness, :spouse_name, :spouse_born_date, :spouse_naturalness,
                :spouse_profession_id, :assisted_addresses, :beginning_housing,

                assisted_residents_attributes: [:id, :cpf, :full_name, :nick_name, :cell_phone, :phone, :email, :facebook, :instagram, :born_date, :is_employed, :is_receiving, :_destroy],
                assisted_vulnerabilities_attributes: [:id, :social_vulnerability_type_id, :social_vulnerability_score_id, :description, :_destroy],
                assisted_phones_attributes: [:id, :phone_type_id, :number, :notes, :_destroy],
                assisted_benefits_attributes: [:id, :benefit_id, :notes, :_destroy]
  #
  # or
  #
  #permit_params do
  #  permitted = [:name, :address, :number, :district_id, :city_id, :first_assistance, :last_assistance, :first_interview, :last_interview]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  #end

  #..|begin show
  show do
    attributes_table do
      row :name
      row :address
      row :number
      row :district
      row :city
      row :first_assistance
      row :last_assistance
      row :first_interview
      row :last_interview

      tabs do

        tab :telefones do
          table_for assisted_address.assisted_phones do
            column :phone_type
            column :number
            column :notes
          end
        end

        tab :beneficios do
          table_for assisted_address.assisted_benefits do
            column :benefit
            column :notes
          end
        end

        tab :vulnerabilidades do
          table_for assisted_address.assisted_vulnerabilities do
            column :social_vulnerability_type
            column :social_vulnerability_score
            column :description
          end
        end

        tab :moradores do
          table_for assisted_address.assisted_residents.order('full_name ASC') do
            column :full_name
            column :nick_name
            column :cell_phone
            column :phone
            column :email
            column :facebook
            column :instagram
            column :born_date
            column :is_employed
            column :is_receiving
          end
        end
      end

      
    end
    active_admin_comments
  end
  #..|end show

  #..|begin form
  form do |f|
    f.inputs "Endereço em Vulnerabilidade Social" do
      f.input :cpf
      f.input :name
      f.input :born_date, start_year: 1900
      f.input :naturalness
      f.input :profession_id, :label => 'Profissão', :as => :select, :collection => Profession.all.map{|u| ["#{u.name}", u.id]}
      f.input :beginning_housing, start_year: 1900
    end

    tabs do

      tab :conjugue do
        f.inputs do
          f.input :marital_status_id, :label => 'Estado Civil', :as => :select, :collection => MaritalStatus.all.map{|u| ["#{u.name}", u.id]}
          f.input :spouse_name          
          f.input :spouse_born_date, start_year: 1900
          f.input :spouse_profession_id, :label => 'Profissão', :as => :select, :collection => Profession.all.map{|u| ["#{u.name}", u.id]}
          f.input :spouse_naturalness
        end
      end

      tab :endereco do
        f.inputs do
          f.input :residence_status_id, :label => 'Residência', :as => :select, :collection => ResidenceStatus.all.map{|u| ["#{u.name}", u.id]}
          f.input :address
          f.input :number
          f.input :district_id, :label => 'Bairro', :as => :select, :collection => District.all.map{|u| ["#{u.name}", u.id]}
          f.input :city_id,     :label => 'Cidade', :as => :select, :collection => City.all.map{|u| ["#{u.name}", u.id]}
        end
      end

      tab :telefones do
        f.inputs do
          f.has_many :assisted_phones, heading: 'Phones',
                      allow_destroy: true, 
                      new_record: true do |r|
            r.input :phone_type_id, :label => 'Tipo de Telefone', :as => :select, :collection => PhoneType.all.map{|u| ["#{u.name}", u.id]}
            r.input :number
            r.input :notes
          end        
        end
      end

      tab :beneficios do
        f.inputs do
          f.has_many :assisted_benefits, heading: 'Beneficios',
                      allow_destroy: true, 
                      new_record: true do |r|
            r.input :benefit_id, :label => 'Benefício', :as => :select, :collection => Benefit.all.map{|u| ["#{u.name}", u.id]}          
            r.input :notes
          end        
        end
      end

      tab :necessidades do
        f.inputs do
          f.has_many :assisted_vulnerabilities, heading: 'Vulnerabilidades', allow_destroy: true, new_record: true do |v|
            v.input :social_vulnerability_type
            v.input :social_vulnerability_score
            v.input :description
          end
        end
      end

      tab :moradores do
        f.inputs do
          f.has_many :assisted_residents, heading: 'Moradores',
                      allow_destroy: true, 
                      new_record: true do |r|
            r.input :cpf
            r.input :full_name
            r.input :nick_name
            r.input :cell_phone
            r.input :phone
            r.input :email
            r.input :facebook
            r.input :instagram
            r.input :born_date, start_year: 1900
            r.input :is_employed
            r.input :is_receiving
          end        
        end
      end

      tab :assitencia do
        f.inputs do
          f.input :external_contact
          f.input :first_assistance, start_year: 1900#, :as => :string, :input_html => {:class => 'datepicker hasDatePicker'}
          f.input :last_assistance, start_year: 1900#,  :as => :string, :input_html => {:class => 'datepicker hasDatePicker'}
          f.input :first_interview, start_year: 1900#,  :as => :string, :input_html => {:class => 'datepicker hasDatePicker'}
          f.input :last_interview, start_year: 1900#,   :as => :string, :input_html => {:class => 'datepicker hasDatePicker'}
        end
      end

    end

    

    actions
  end
  #..|end form
  
end
