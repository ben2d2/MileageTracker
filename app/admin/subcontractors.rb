ActiveAdmin.register Subcontractor do
 actions :all, :except => [:edit, :destroy]


  index do
  	column :id
  	column :first_name
  	column :last_name
  	column :email
  	column :phone
  	default_actions
  end

  show do
  	attributes_table do
	  	row :id
	  	row :first_name
	  	row :last_name
	  	row :email
	  	row :phone

	  end
  end

end
