class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :type, 
  :name, :address, :telephone, :url, :image

  mount_uploader :image, ImageUploader

  USER_TYPES = %w[Employee Employer]

	after_create :create_profile, if: Proc.new { |u|  u.type == 'Employer' }

  def create_profile
    profile = Profile.new
    profile.employer_id = self.id
    profile.save
  end
end
