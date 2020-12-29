class DeleteQuestionsController < ApplicationController
  def delete_question
    @question = Question.where(id: params[:ques_id], user_id: current_user.id)
    if @question != nil
      @answer   = Answer.where(question_id: params[:ques_id])
      @vote     = Vote.where(question_id: params[:ques_id])
      @comment = Comment.where(question_id: params[:ques_id])

      @comment.delete(@comment.ids)
      @vote.delete(@vote.ids)
      @answer.delete(@answer.ids)
      @question.delete(@question.ids)
    end
    redirect_to root_path
  end
end
