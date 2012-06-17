module ApplicationHelper
  def refresh_time
    Time.now.strftime("%H%m%s")
  end
end
