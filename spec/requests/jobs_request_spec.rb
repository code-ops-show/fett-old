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
      page.should have_css("div.jobs") 
   end

  it "should render job show page" do
    visit root_path
    page.find(:css, 'li#job_1').find('a').click 
    page.should have_content "Test Description"  
  end
end