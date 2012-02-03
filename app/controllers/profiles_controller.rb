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
  	@profile = Profile.find(params[:id])
  	if @profile.update_attributes(:profile)
  		redirect_to edit_employer_profile_path(@profile)
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