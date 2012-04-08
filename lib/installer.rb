class Installer
  def self.autostart?
    File.exist? autostart_filename
  end

  def self.autostart
    if autostart?
      FileUtils.rm autostart_filename
    else
      FileUtils.mkpath(autostart_path)
      File.open(autostart_filename, 'w') {|f| f.write(generate_file) }
    end

    autostart?
  end

  def self.generate_file
    content = "[Desktop Entry]\n"
    content += "Type=Application\n"
    content += "Exec=#{exec_path}\n"
    content += "Hidden=false\n"
    content += "X-GNOME-Autostart-enabled=true\n"
    content += "Name[en_US]=kronstadt\n"
    content += "Name=kronstadt\n"
    content += "Comment[en_US]=kronstadt\n"
    content += "Comment=kronstadt\n"
    content
  end

  private

  def self.home
    Dir.home
  end

  def self.autostart_path
    File.join(Dir.home, '.config/autostart/')
  end

  def self.autostart_filename
    File.join(autostart_path, 'kronstadt.desktop')
  end

  def self.exec_path
    File.join(Rails.root.to_s, 'script/rails server -d')
  end
end
