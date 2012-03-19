module Enumerable
   def select_with_index
      index = -1
      (block_given? && self.class == Range || self.class == Array)  ?  select { |x| index += 1; yield(x, index) }  :  self
   end

   def select_with_index_blk(&block)
      index = -1
      (block && self.class == Range || self.class == Array)  ?  select { |x| index += 1; block.call(x, index) }  :  self
   end
end

class Wmctrl
  def self.list_desktops
    `wmctrl -d`
  end

  def self.list_windows
    window_list = []
    wmctrl_output = `wmctrl -l`.to_s.split("\n")
    wmctrl_output.each do |win|
      win_array = win.split
      window_list << {
        :id => win_array[0],
        :desktop => win_array[1],
        :name => win.split.select_with_index{|i, index| i if index > 2 }.join(" ")
      }
    end
    window_list
  end

  def self.focus window_id
    `wmctrl -i -a #{window_id}`
  end

  def self.close window_id
    `wmctrl -i -c #{window_id}`
  end

  def self.fullscreen window_id
    `wmctrl -i -r #{window_id} -b toggle,fullscreen`
  end

  def self.move_right window_id
    `wmctrl -i -r #{window_id} -e 0,1440,-1,-1,-1`
  end

  def self.window_id window_name
    `wmctrl -l | grep #{window_name}`.split[0]
  end
end
