class Subcontractor < ActiveRecord::Base

	belongs_to :user, class_name: "User"

  # Setup accessible (or protected) attributes for your model
  validates_presence_of :first_name, :last_name, :phone

  attr_accessible :first_name, :last_name, :phone
end
