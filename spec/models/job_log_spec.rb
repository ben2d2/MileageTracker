require 'spec_helper'

describe JobLog do
  describe "validations" do
    it { should validate_presence_of :date }
    it { should validate_presence_of :subcontractor_id }
    it { should validate_presence_of :client_id }
    it { should validate_presence_of :miles }
    it { should validate_presence_of :hours }
  end
  describe "associations" do
    it { should belong_to :client }
    it { should belong_to :subcontractor }
  end

  describe "#total_miles_rate" do
    context "if there is no total miles rate" do
      it "should be nil" do
      job_log = Fabricate :job_log
      job_log.total_miles_rate.should be_nil
    end
  end
    context "if there is a total miles rate" do
      it "should be 55" do
      job_log = Fabricate :job_log
      rate = Fabricate :rate, subcontractor: job_log.subcontractor, client: job_log.client
      job_log.total_miles_rate.should == 55.0
    end
  end
end

  describe "#total_hours_rate" do
      
      context "if there is a total hours rate" do
        it "should be 240" do
        job_log = Fabricate :job_log
        rate = Fabricate :rate, subcontractor: job_log.subcontractor, client: job_log.client
        job_log.total_hours_rate.should == 240.0
      end
    end
  end
end
