class FileSystemController < ApplicationController
  def index
    redirect_to :action => "ls"
  end

  def ls
    @files = FileSystem.ls params[:id]
    session[:pwd] = '/' + params[:id].to_s

    respond_to do |format|
      format.html
      format.xml { render :xml => @files }
      format.json { render :json => @files }
    end
  end

  def bookmarks
    @bookmarks = Bookmark.find(:all)
  end

  def add_bookmark
    Bookmark.create(:location => params[:location])
  end

  def remove_bookmark
    Bookmark.find_by_location(params[:location]).destroy
    redirect_to :action => "ls"
  end
end
