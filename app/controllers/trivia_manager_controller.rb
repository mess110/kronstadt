class TriviaManagerController < ApplicationController
  def index
    @question = QuestionLog.get_main_question
  end

  def answer
  end
end
