class WindowManagerController < ApplicationController
  def index
    @windows = Wmctrl.list_windows

    respond_to do |format|
      format.html
      format.xml { render :xml => @windows }
      format.json { render :json => @windows }
    end
  end

  def focus
    Wmctrl.focus params[:window_id]

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end

  def close
    Wmctrl.close params[:window_id]

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end

  def fullscreen
    Wmctrl.fullscreen params[:window_id]

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end

  def move_right
    Wmctrl.move_right params[:window_id]

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end
end
