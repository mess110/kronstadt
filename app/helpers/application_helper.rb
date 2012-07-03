module ApplicationHelper
  def refresh_time
    Time.now.strftime("%H%m%s")
  end

  def menu_link image, url
    link_to(image_tag(image), url, "data-transition" => "none")
  end

  def answer_tag a, i
    row = i % 2 == 0 ? 'a' : 'b'
    "<div class=\"ui-block-#{row}\">#{a.text}</div>".html_safe
  end
end
