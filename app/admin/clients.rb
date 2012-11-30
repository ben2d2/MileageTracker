ActiveAdmin.register Client do
  index do
  	column :id
  	column :name
  	column :contact
  	column :email
  	default_actions
  end

  show do
  	attributes_table do
  	row :id
  	row :name
  	row :contact
    row :email
    row :phone
  end

panel "Recent Job Logs" do
          table_for client.job_logs do
              column :id
              column :date do |job_log|
                  job_log.date
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
