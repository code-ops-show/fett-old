class JobsController < ApplicationController
  def index
  	@jobs = Job.all
  end
	def list
	  @jobs = Job.find(:all)
	end
	def show
	  @jobs = Job.find(params[:id])
	end
	def new
    @jobs = Job.new
  end
  def create
  	@jobs = Job.new(params[:job])
  	if @jobs.save
  		redirect_to :action => "index"
  	else
  		render :action => "new"
  	end
  end
  def edit
    @jobs = Job.find(params[:id])
  end
  def update
    @jobs = Job.find(params[:id])
    if @jobs.update_attributes(params[:job])
       redirect_to :action => 'show', :id => @jobs
    else
       @subjects = Subject.find(:all)
       render :action => 'edit'
    end
  end
  def delete
    Job.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
end