module FileSystemHelper
  def is_movie
    ext = File.extname(session[:pwd])
    if ext == '.avi' || ext == '.mkv'
      return true
    end

    false
  end

  def bookmarked?
    !Bookmark.find_by_location(session[:pwd]).nil?
  end
end
