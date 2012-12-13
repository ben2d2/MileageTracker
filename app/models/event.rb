class Event < ActiveRecord::Base
  has_event_calendar

  attr_accessible :client_id, :subcontractor_id, :start_at, :end_at, :color

  validates_presence_of :client_id, :subcontractor_id, :start_at, :end_at

	belongs_to :client, class_name: Client

	belongs_to :subcontractor, class_name: Subcontractor
end
