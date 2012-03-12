class Api::V1Controller < ApplicationController
  def index
    render :text => "version1"
  end
end
