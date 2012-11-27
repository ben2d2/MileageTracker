class JobLog < ActiveRecord::Base
	
	belongs_to :client, class_name: Client

	belongs_to :subcontractor, class_name: Subcontractor

	has_many :rates

	validates_presence_of :client_id, :date, :miles, :subcontractor_id, :hours


  attr_accessible :client_id, :date, :miles, :subcontractor_id, :hours


  def total_miles_rate
    @total_miles_rate = Rate.find_by_subcontractor_id_and_client_id(self.subcontractor_id, self.client_id).miles_rate.to_f * self.miles.to_f
  end

  def total_hours_rate
    @total_hours_rate = Rate.find_by_subcontractor_id_and_client_id(self.subcontractor_id, self.client_id).labor_rate.to_f * self.hours.to_f
  end

end
