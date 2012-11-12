class Client < ActiveRecord::Base

	validates_presence_of :email, :name, :contact, :phone
	
  attr_accessible :email, :name, :contact, :phone
end
