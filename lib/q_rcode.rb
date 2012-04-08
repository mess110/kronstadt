class QRcode
  def self.generate
    RQRCode::QRCode.new(APP_CONFIG["market_link"])
  end
end
