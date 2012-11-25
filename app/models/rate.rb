class Rate < ActiveRecord::Base
	belongs_to :client, class_name: Client

	belongs_to :subcontractor, class_name: Subcontractor

  attr_accessible :client_id, :labor_rate, :miles_rate, :subcontractor_id

  validates_presence_of :client_id, :labor_rate, :miles_rate, :subcontractor_id
end
