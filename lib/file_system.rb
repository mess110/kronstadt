class FileSystem
  def self.ls path = ""
    path = "/" if path == nil
    path = "/" if path.length < 1
    path = "/" + path if path[0] != "/"

    items = []

    Dir["#{path}/*"].each do |f|
      files = f.split("/")
      items << files.last
    end

    if path.length > 1 && path[-1,1] != "/"
      path += "/"
    end

    empty = items.count == 1

    {
      :pwd => path,
      :file_names => items,
      :empty => empty
    }
  end
end
