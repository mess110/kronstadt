class Api::V1::FileSystemController < ApplicationController
  def ls
    render :text => (FileSystem.ls "/")
  end
end
