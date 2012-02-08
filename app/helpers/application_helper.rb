module ApplicationHelper
	def nav_link(link_text, link_path)
		class_name = current_page?(link_path) ? 'active' : ''

		content_tag(:dd) do
			link_to(link_text, link_path, class: class_name)
		end
	end

  def image_avatar(avatar, show, width)
    if avatar.image_url.nil?
      if !show.blank?
        image_tag "avatar/guest_avatar.gif"
      end
    else 
      image_tag avatar.image_url.to_s, width: width
    end
  end
end
