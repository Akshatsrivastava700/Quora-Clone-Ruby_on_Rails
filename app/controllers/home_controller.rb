class HomeController < ApplicationController
  def index
    if current_user
      @question = Question.all
      @answer   = Answer.all
    else
      redirect_to new_user_session_path
    end
  end
end
