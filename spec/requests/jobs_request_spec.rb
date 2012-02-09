require 'spec_helper'

describe "Jobs Request" do
   before(:each) do
      3.times do
        Factory(:job)
      end
   end

   it "should render job index page" do
      visit root_path
      page.should have_content "Recent Jobs"
      page.should have_content "Job 1"
      page.should have_css("div.jobs-listing") 
   end

  it "should render job show page" do
    visit root_path
    page.find(:css, 'li#job_1').find('a').click 
    page.should have_content "Test Description"  
  end

  it "should show the post a job link for employer" do
    user = Factory(:user, type: "Employer")
    login user
    visit root_path
    page.should have_link('Post a job')
  end

  it "should allow employer to create job" do
    user = Factory(:user, type: "Employer")
    login user
    visit new_employer_job_path(user)
    fill_in 'job_title', with: "New Test Job"
    select "Permanent", from: 'job_job_type'
    fill_in "job_location", with: "Bangkok, Thailand"
    fill_in "job_salary", with: "20,000 THB / M"
    fill_in "job_description", with: "Test job description."
    click_button "Publish"
    visit root_path
    page.should have_content "New Test Job"
  end

  it "should not allow employee to create job" do
    user = Factory(:user, type: "Employee")
    login user
    visit root_path
    page.should_not have_link('Post a job')
  end
end