class WorkHistory < ActiveRecord::Base
	validates_presence_of :company_name, :start_date, :job_description

	belongs_to :resume

  attr_accessible :company_name, :end_date, :job_description, :start_date
end
