ActiveAdmin.register Subcontractor do
  index do
  	column :id
  	column :first_name
  	column :last_name
  	column :email
  	column :phone
  	default_actions
  end

end
