class Employer < User
	has_many :jobs, :dependent => :destroy
	has_one :profile, :dependent => :destroy

	#after_save @user.build_profile
end