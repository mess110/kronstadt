class Api::V1::FileSystemController < ApplicationController
  def ls
    @files = FileSystem.ls params[:id]

    respond_to do |format|
      format.html
      format.xml { render :xml => @files }
      format.json { render :json => @files }
    end
  end
end
