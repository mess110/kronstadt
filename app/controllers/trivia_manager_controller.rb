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
    @score = {}
    user_answers = UserAnswer.all.collect{|ua|
      if !@score.has_key? ua.name
        @score[ua.name] = ua.worth_points? ? 1 : 0
      else
        @score[ua.name] = @score[ua.name].to_i + (ua.worth_points? ? 1 : 0)
      end
    }
    render :json => @score
  end

  def answer
    @question = QuestionLog.get_main_question

    render :text => @question.answer(params)
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
