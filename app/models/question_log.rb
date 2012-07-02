class QuestionLog < ActiveRecord::Base
  belongs_to :question

  def answers
    question.answers
  end

  def self.get_main_question
    q = QuestionLog.where(finished: false).first
    q.present? ? q : Question.ask
  end
end
