class MoviePlayerController < ApplicationController
  def index
  end

  def play
    Totem.play session[:pwd]

    if !params[:fullscreen].nil?
      sleep 1
      basename = File.basename session[:pwd]
      wid = Wmctrl.window_id basename
      Wmctrl.move_right wid
      Wmctrl.fullscreen wid
    end

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
