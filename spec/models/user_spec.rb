require 'spec_helper'

describe User do
  it { should_not allow_mass_assignment_of(:id) }

  it "should create profile after create employer" do
    user = FactoryGirl.create(:user, type: "Employer")
    employer = Employer.where(id: user.id).first
    employer.profile.should_not be_nil
  end

  it "should create reumse after create employee" do
  	user = FactoryGirl.create(:user, type: "Employee")
  	employee = Employee.where(id: user.id).first
  	employee.resume.should_not be_nil
  end
end
