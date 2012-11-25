ActiveAdmin.register JobLog do
   actions :all, :except => [:edit, :destroy]


   index do
  	column :id
  	column :date
  	column :client_id
  	column :subcontractor_id
  	column :miles
  	default_actions
  end


 	show do
 		attributes_table do
	  	row :id
	  	row :date
	  	row :client_id
	  	row :subcontractor_id
	  	row :miles
	  end
	end


end
