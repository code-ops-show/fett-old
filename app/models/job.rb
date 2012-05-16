class Job < ActiveRecord::Base
	belongs_to :employer
	JOB_TYPES = %w[Permanent Contract]

  include Tire::Model::Search
  include Tire::Model::Callbacks

  def self.search(params)
    if Job.count > 0
      tire.search(load: true) do
        query { string params[:query] } if params[:query].present?
        sort { by :created_at, "desc" } if params[:query].blank?
      end
    else 
      scoped
    end
  end
end