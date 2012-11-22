class JobLog < ActiveRecord::Base
	
	belongs_to :client, class_name: Client

	belongs_to :subcontractor, class_name: Subcontractor

	validates_presence_of :client_id, :date, :miles, :subcontractor_id, :hours

  attr_accessible :client_id, :date, :miles, :subcontractor_id, :hours

end
