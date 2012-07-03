class UserAnswer < ActiveRecord::Base
  belongs_to :answer
  belongs_to :question_log

  def worth_points?
    answer.correct == true
  end
end
