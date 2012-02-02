class Employee < User
	has_one :resume, :dependent => :destroy
end