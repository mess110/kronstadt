class MoviePlayerController < ApplicationController
  def index
  end

  def play
    Totem.play session[:pwd]

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end

  def kill
    Totem.kill

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end
end
