# Usage example
# Resque.enqueue JRobotQueue
class JRobotQueue
  @queue = :j_robot_queue

  def self.perform
    JRobotServer.start
  end
end
