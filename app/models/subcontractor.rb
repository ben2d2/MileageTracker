class Subcontractor < ActiveRecord::Base

  # Setup accessible (or protected) attributes for your model
  validates_presence_of :email, :first_name, :last_name, :phone

  attr_accessible :email, :first_name, :last_name, :phone
end
