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
    panel "Recent Job Logs" do
            table_for JobLog.where(:subcontractor_id == self.id) do
                column :id
                column :date do |job_log|
                    job_log.date
                end
                column :client_id do |job_log|
                      job_log.client.name
                    end
                column :subcontractor_id do |job_log|
                      job_log.subcontractor.display_name
                    end
                column :miles
                column :hours
          end
        end
  end



end
