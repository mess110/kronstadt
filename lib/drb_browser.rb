class DrbBrowser

  def self.running?
    `ps -ef | grep drb_server.rb`.split("\n").size >= 3
  end

  def self.start
    if !running?
      server_path = File.join(Rails.root, "lib/drb_server.rb")
      system("ruby #{server_path} &")
    end
  end

  def self.kill
    if running
      pid = `ps -ef | grep drb_server.rb`.split("\n")[0].split[1]
      system("killall -9 #{pid}")
    end
  end

  def self.goto url
    browser = DRbObject.new nil, 'druby://:9000'
    browser.goto url
  end
end
