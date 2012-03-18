class FileSystemController < ApplicationController
  def ls
    @files = FileSystem.ls params[:id]
    session[:pwd] = '/' + params[:id].to_s

    respond_to do |format|
      format.html
      format.xml { render :xml => @files }
      format.json { render :json => @files }
    end
  end
end
