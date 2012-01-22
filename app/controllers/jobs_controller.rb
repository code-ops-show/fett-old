class JobsController < ApplicationController
  def index
    @employer = get_employer(params[:employer_id])
  	@jobs = @employer.jobs
  end

	def show
	  @job = Job.where(id: params[:id]).first
	end

	def new
    if current_user
      @employer = get_employer(params[:employer_id])
      @job = @employer.jobs.build
    else 
      @job = Job.new
    end
  end

  def create
    @employer = get_employer(params[:employer_id])
  	@job = @employer.jobs.build(params[:job])
  	if @job.save
  		redirect_to root_path
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

  private

  def get_employer(employer_id)
    Employer.where(id: params[:employer_id]).first
  end
end