require 'spec_helper'

describe Client do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :phone }
    it { should validate_presence_of :contact }
  end
  describe "associations" do
    it { should have_many :job_logs }
    it { should have_many :rates }
  end
end
