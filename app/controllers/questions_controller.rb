class QuestionsController < ApplicationController
  def create
    if current_user != nil && params["post_question"]["ques"] != ""
      @question = Question.new(params.require(:post_question).permit(:email, :ques, :user_id))
      if @question.save
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end

  def delete_question
    @del_question = Question.where(id: params[:ques_id].to_i, user_id: current_user.id)
    if @del_question != nil
      @del_answer   = Answer.where(question_id: params[:ques_id].to_i)
      @del_vote     = Vote.where(question_id: params[:ques_id].to_i)
      @del_comment = Comment.where(question_id: params[:ques_id].to_i)

      @del_comment.delete(@del_comment.ids)
      @del_vote.delete(@del_vote.ids)
      @del_answer.delete(@del_answer.ids)
      @del_question.delete(@del_question.ids)
    end
    redirect_to root_path
  end
end
