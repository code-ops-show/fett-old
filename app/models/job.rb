class Job < ActiveRecord::Base
	belongs_to :employer
	JOB_TYPES = %w[Permanent Contract]
end
