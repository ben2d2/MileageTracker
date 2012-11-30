class JobLog < ActiveRecord::Base
	
	belongs_to :client, class_name: Client

	belongs_to :subcontractor, class_name: Subcontractor

	has_many :rates

	validates_presence_of :client_id, :date, :miles, :subcontractor_id, :hours


  attr_accessible :client_id, :date, :miles, :subcontractor_id, :hours

  def lookup_rates
    Rate.find_by_subcontractor_id_and_client_id(self.subcontractor_id, self.client_id)
  end


  def total_miles_rate
    unless lookup_rates == nil
      @total_miles_rate = lookup_rates.miles_rate.to_f * self.miles.to_f
      @total_miles_rate.round
    end
  end

  def total_hours_rate
     unless lookup_rates == nil
      @total_hours_rate = lookup_rates.labor_rate.to_f * self.hours.to_f
      @total_hours_rate.round
    end
  end

end
