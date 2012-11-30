ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      
    end

    # Here is an example of a simple dashboard with columns and panels.
    
    columns do
        
      column do
        panel "Recent Job Logs" do

            table_for JobLog.limit(10) do
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
  end # content
end
