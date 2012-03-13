class Totem
  def self.play path
    system "totem #{path} &"
  end

  # totem crashes this ugly hack is required
  def self.kill
    system "killall -9 totem &"
  end
end
