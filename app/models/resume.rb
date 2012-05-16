class Resume < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :nationality, :status, :language, :address

	has_many :work_histories, dependent: :destroy
	belongs_to :employee

	accepts_nested_attributes_for :work_histories, allow_destroy: true
end
