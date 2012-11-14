class Subcontractor < ActiveRecord::Base

	belongs_to :user, class_name: "User"
	has_many :mileage_records
  # Setup accessible (or protected) attributes for your model
  validates_presence_of :first_name, :last_name, :phone

  attr_accessible :first_name, :last_name, :phone
end
