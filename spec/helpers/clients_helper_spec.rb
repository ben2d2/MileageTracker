require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ClientsHelper. For example:
#
# describe ClientsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ClientsHelper do
describe "validations" do
    it { should validate_presence_of :email }
    it { should validate_presence_of :name }
    it { should validate_presence_of :contact }
    it { should validate_presence_of :phone }
  end
end
