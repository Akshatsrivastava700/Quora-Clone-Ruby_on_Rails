class QuestionsController < ApplicationController
  def create
    params[:question][:user_id] = current_user.id
    @question = Question.new(params.require(:post_question).permit(:email, :ques, :user_id))
    if @question.save
      redirect_to root_path
    end
  end
end
