class JRobotServer
  def self.start
    path = File.join(Rails.root.to_s, "lib", 'jrobotserver.jar')
    system "java -jar #{path} &"
  end
end
