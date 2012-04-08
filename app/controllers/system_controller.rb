class SystemController < ApplicationController
  def info
    @qr = QRcode.generate

    respond_to do |format|
      format.html
      format.xml { render :xml => "<unimplemented />" }
      format.json { render :json => "unimplemented" }
    end
  end

  def autostart
    @autostart = Installer.autostart

    respond_to do |format|
      format.html { redirect_to root_path }
      format.xml { render :xml => "<unimplemented />" }
      format.json { render :json => "unimplemented" }
    end
  end
end
