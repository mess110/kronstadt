class Note < ActiveRecord::Base
  before_save :calculate_score

  def vote vote_value
    self.votes += vote_value.to_i
    self.save
  end

  def calculate_score
    if self.votes_changed?
      time_elapsed = (Time.now - self.created_at) / 3600
      self.score = ((self.votes-1) / (time_elapsed+2)**1.8).real
    end
  end

  def visit
    system "firefox '#{text}' &"
  end
end
