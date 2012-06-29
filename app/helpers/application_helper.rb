module ApplicationHelper
  def refresh_time
    Time.now.strftime("%H%m%s")
  end

  def menu_link image, url
    link_to(image_tag(image), url, "data-transition" => "none")
  end
end
