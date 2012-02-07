require 'spec_helper'

describe User do
  it { should_not allow_mass_assignment_of(:id) }

  it "should create profile after create employer" do
    user = Factory(:employer, type: "Employer")
    employer = Employer.where(id: user.id).first
    employer.profile.should_not be_nil
  end
end
