class HomeController < ApplicationController
  def index
  end

  def market_link
    @market_link = APP_CONFIG["market_link"]
    @qr = RQRCode::QRCode.new(@market_link)
  end

  def stats
  end
end
