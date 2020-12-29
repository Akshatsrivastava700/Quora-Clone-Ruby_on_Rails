class DeleteAnswersController < ApplicationController
  def delete_answer
    @answer = Answer.where(id: params[:ans_id], user_id: current_user.id)
    if @answer != nil
      @vote = Vote.where(answer_id: params[:ans_id])
      @comment = Comment.where(answer_id: params[:ans_id])
      @comment.delete(@comment.ids)
      @vote.delete(@vote.ids)
      @answer.delete(@answer.ids)
    end
    redirect_to new_answer_path(:ques_id => params[:ques_id])
  end
end
