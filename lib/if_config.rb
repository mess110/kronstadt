class IfConfig
  def self.ips
    ips = []
    inets = `/sbin/ifconfig | grep "inet addr"`.split(" ")
    inets.each do |i|
      ips << i.gsub("addr:","") if i =~ /\Aaddr:/
    end
    ips.delete("127.0.0.1")
    ips
  end
end
