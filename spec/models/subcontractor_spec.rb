require 'spec_helper'

describe Subcontractor do
  describe "validations" do
    it { should validate_presence_of :email }
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :phone }
  end
  describe "associations" do
    it { should have_many :job_logs }
    it { should have_many :rates }
  end
end
