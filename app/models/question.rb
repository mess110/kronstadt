class Question < ActiveRecord::Base
  has_many :answers

  def self.ask
    q = order("asked desc").first
    q.inc_ask_counter!
    QuestionLog.create(question_id: q.id)
    q
  end

  def inc_ask_counter!
    self.asked += 1
    self.save
  end
end
