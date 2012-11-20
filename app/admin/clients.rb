ActiveAdmin.register Client do
  index do
  	column :id
  	column :name
  	column :contact
  	column :email
  	default_actions
  end

end
