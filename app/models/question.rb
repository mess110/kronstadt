class Question < ActiveRecord::Base
  has_many :answers
  has_many :question_logs

  def self.ask
    q = Question.order("asked desc").first
    q.inc_ask_counter!
    QuestionLog.create(question_id: q.id)
  end

  def inc_ask_counter!
    self.asked += 1
    self.save
  end
end
