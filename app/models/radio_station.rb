class RadioStation < ActiveRecord::Base
  def play
    system "killall -9 /usr/bin/firefox &"
    system "firefox '#{url}' &"
  end
end
