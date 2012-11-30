ActiveAdmin.register JobLog do
   actions :all, :except => [:edit, :destroy]

   index do
  	column :id
  	column :date
  	column :client_id do |job_log|
          job_log.client.name
        end
  	column :subcontractor_id do |job_log|
          job_log.subcontractor.display_name
        end
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
      row :total_miles_rate do |rate|
            number_to_currency rate.total_miles_rate
          end
      row :hours
      row :total_hours_rate do |rate|
            number_to_currency rate.total_hours_rate
          end
	  end
	end


end
