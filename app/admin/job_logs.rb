ActiveAdmin.register JobLog do
   actions :all, :except => [:edit, :destroy]


   index do
  	column :id
  	column :date
  	column :client_id
  	column :subcontractor_id
    column :miles
    column :hours
  	default_actions
  end


 	show do
 		attributes_table do
	  	row :id
	  	row :date
	  	row :client_id
	  	row :subcontractor_id
      row :miles
      row :hours
	  end
	end


end
