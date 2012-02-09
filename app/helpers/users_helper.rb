module UsersHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def avatar_account(width)
    if current_user.image_url.nil?
      image_tag "avatar/guest_avatar.gif"
    else
      image_tag current_user.image_url.to_s, :width => width
    end
  end
end
