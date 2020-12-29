class QuestionsController < ApplicationController
  def create
    @question = Question.new(params.require(:post_question).permit(:email, :ques, :user_id))
    if @question.save
      redirect_to root_path
    end
  end
end
