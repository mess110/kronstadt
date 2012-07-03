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
    ua = UserAnswer.find_by_name_and_question_log_id params[:username], self.id
    if ua.present?
      return false
    end

    if answers.collect{|a| a.id}.include?(params[:answer_id].to_i)
      return false
    end

    UserAnswer.create(name: params[:username], answer_id: params[:answer_id], question_log_id: self.id)
    true
  end

  def finish!
    self.finished = true
    self.save
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
