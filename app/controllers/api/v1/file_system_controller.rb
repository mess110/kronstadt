class Api::V1::FileSystemController < ApplicationController
  def ls
    render :text => (FileSystem.ls params[:id])
  end
end
