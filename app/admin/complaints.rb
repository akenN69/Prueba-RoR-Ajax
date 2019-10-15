ActiveAdmin.register Complaint do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :company_id, :content
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :company_id, :content]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :content
  
  index do
    column :id
    column :content
    actions
  end

  form do |f|
    inputs 'Agregar un nuevo usuario' do

    input :content
    end
    actions #Crea los botones
  end

end
