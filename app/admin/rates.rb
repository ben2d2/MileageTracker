ActiveAdmin.register Rate do

  index do
  	column :id
  	column :client_id
  	column :subcontractor_id
  	column :miles_rate do |rate|
      number_to_currency rate.miles_rate
    end
  	column :labor_rate do |rate|
      number_to_currency rate.labor_rate
    end
  	default_actions
  end

  show do
  	attributes_table do
    row :id
    row :client_id
    row :subcontractor_id
    row :miles_rate do |rate|
      number_to_currency rate.miles_rate
    end
    row :labor_rate do |rate|
      number_to_currency rate.labor_rate
    end
  end
  end

end
