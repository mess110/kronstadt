class TriviaManagerController < ApplicationController
  def index
    @question = QuestionLog.get_main_question

    respond_to do |format|
      format.html
      format.xml { render :xml => hasify(@question) }
      format.json { render :json => hasify(@question) }
    end
  end

  def points
    ql = QuestionLog.get_main_question
    result = []
    ql.user_answers.each do |ua|
      result << {
        :correct => ua.worth_points?,
        :name => ua.name
      }
    end
    render :xml => result
  end

  def answer
    @question = QuestionLog.get_main_question
    @question.answer params

    render :text => 200
  end

  def finish
    @question = QuestionLog.get_main_question
    @question.finish!

    render :text => 200
  end

  private

  def hasify question
    {
      :question => question.question,
      :answers => question.answers
    }
  end
end
