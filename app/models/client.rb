class Client < ActiveRecord::Base

	belongs_to :mileage_record, class_name: "MileageRecord"

	validates_presence_of :email, :name, :contact, :phone
	
  attr_accessible :email, :name, :contact, :phone
end
