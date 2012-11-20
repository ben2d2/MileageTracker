ActiveAdmin.register MileageRecord do
   index do
  	column :id
  	column :date
  	column :client_id
  	column :subcontractor_id
  	column :miles
  	default_actions
  end


end
