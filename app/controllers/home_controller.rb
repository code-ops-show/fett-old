class HomeController < ApplicationController
  def index
  	@jobs = Job.find(:all)
  end

end
