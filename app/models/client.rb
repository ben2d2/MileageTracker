class Client < ActiveRecord::Base
	
	has_many :job_logs

	validates_presence_of :email, :name, :contact, :phone
	
  attr_accessible :email, :name, :contact, :phone
end
