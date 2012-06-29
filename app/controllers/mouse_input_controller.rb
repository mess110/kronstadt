class MouseInputController < ApplicationController
  def index
    Resque.enqueue JRobotQueue
  end
end
