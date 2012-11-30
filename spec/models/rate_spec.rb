require 'spec_helper'

describe Rate do
  describe "validations" do
    it { should validate_presence_of :subcontractor_id }
    it { should validate_presence_of :client_id }
    it { should validate_presence_of :miles_rate }
    it { should validate_presence_of :labor_rate }
  end
  describe "associations" do
    it { should belong_to :client }
    it { should belong_to :subcontractor }
  end
end
