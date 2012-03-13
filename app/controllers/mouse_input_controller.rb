class MouseInputController < ApplicationController
  def move
    system "java -jar #{jrobot_path} move #{params[:x]} #{params[:y]}"

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end

  def incremental_move
    system "java -jar #{jrobot_path} incremental_move #{params[:x]} #{params[:y]}"

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end

  def click
    system "java -jar #{jrobot_path} click #{params[:button]}"

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end

  def double_click
    system "java -jar #{jrobot_path} click #{params[:button]}"
    puts "xD"
    system "java -jar #{jrobot_path} click #{params[:button]}"

    respond_to do |format|
      format.html
      format.xml { render :xml => "<success />" }
      format.json { render :json => "success" }
    end
  end

  private

  def jrobot_path
    File.join(Rails.root, "lib/jrobot.jar")
  end
end
