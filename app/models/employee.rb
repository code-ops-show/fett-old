class Employee < User
	has_one :resume, :dependent => :destroy

	attr_accessible :resume_attributes

	accepts_nested_attributes_for :resume
end