class ProfilesController < ApplicationController
  def index
  end
  def show
  	@profile = get_employer(params[:employer_id])
  	@profile = @employer.profile
  end
  def new
  end
  def create
  end
  def edit
  	@employer = get_employer(params[:employer_id])
  	@profile = @employer.profile
  end
  def update
    @employer = get_employer(params[:employer_id])
  	@profile = @employer.profile
  	if @profile.update_attributes(params[:profile])
  		redirect_to edit_employer_profile_path(@employer)
  	else
  		render :action => "edit"
  	end
  end
  def delete
  end

  private
  def get_employer(employer_id)
    Employer.where(id: employer_id).first
  end
end