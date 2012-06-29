class RadioManagerController < ApplicationController
  def index
    @radio_stations = RadioStation.all
  end

  def play
    @radio = RadioStation.find(params[:id])
    @radio.play
    render :json => params[:id]
  end
end
