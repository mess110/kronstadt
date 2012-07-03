class BrowserController < ApplicationController
  def index
    @notes = Note.order("score desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notes }
    end
  end

  def visit
    @note = Note.find(params[:id])
    @note.visit
    render :json => params[:id]
  end
end
