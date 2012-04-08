class SystemController < ApplicationController
  def info
    @path = Rails.root.to_s
    @ip = IfConfig.ips[0]
    @market_link = APP_CONFIG["market_link"]
    @qr = RQRCode::QRCode.new(@market_link)
  end
end
