class QuestionLog < ActiveRecord::Base
  belongs_to :question
  has_many :user_answers

  def answers
    question.answers
  end

  def text
    question.text
  end

  def correct_answers
    answers.select{|a| a if a.correct}
  end

  def answer params
    UserAnswer.create(name: params[:username], answer_id: params[:answer_id], question_log_id: self.id)
  end

  def finish!
    self.finished = true
    self.true
  end

  def self.get_main_question
    q = QuestionLog.where(finished: false).first
    q.present? ? q : Question.ask
  end

  private

  def self.get_question
    QuestionLog.where(finished: false).first
  end
end
