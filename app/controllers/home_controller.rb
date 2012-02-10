class HomeController < ApplicationController
  def index
    @jobs = Job.search(params)
  end
end
