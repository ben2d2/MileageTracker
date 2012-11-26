	  table_for(job_logs, :sortable => true, :class => 'index_table') do
	  	column :id
	  	column :date
	  	column :client_id
	  	column :miles
	  	column :hours
    default_actions rescue nil # test for responds_to? does not work.
  end