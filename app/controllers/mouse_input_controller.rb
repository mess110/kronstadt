class MouseInputController < ApplicationController
  def index
    JRobotServer.start
  end
end
