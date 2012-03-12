class FileSystem
  def self.ls path
    items = [".."]

    Dir["#{path}/*"].each do |f|
      files = f.split("/")
      items << files.last
    end

    if path.length > 1 && path[-1,1] != "/"
      path += "/"
    end

    {
      :pwd => path,
      :file_names => items
    }
  end
end
