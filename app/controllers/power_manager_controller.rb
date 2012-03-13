class PowerManagerController < ApplicationController
  def index
  end

  def shutdown
    system "echo #{password} | sudo -S /sbin/shutdown -P 0 &"

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end

  def reboot
    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end
end
