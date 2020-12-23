class QuestionsController < ApplicationController
  def new
    if current_user
      @question = Question.new
      render 'questions/new'
    else
      redirect_to root_path
    end
  end

  def create
    #params[:question][:users_id] = current_user.id
    @question = Question.new(params.require(:question).permit(:email, :ques, :user_id))
    if @question.save
      redirect_to root_path
    end
  end
end
