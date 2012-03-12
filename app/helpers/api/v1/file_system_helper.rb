module Api::V1::FileSystemHelper
  def get_extension(path)
    File.extname(path.slice(0...-1))
  end
end
