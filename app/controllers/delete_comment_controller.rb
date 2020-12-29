class DeleteCommentController < ApplicationController
  def delete_comment
    @comment = Comment.where(id: params[:cmt_id], user_id: current_user.id)
    if @comment != nil
      @comment.delete(@comment.ids)
    end
    redirect_to new_answer_path(:ques_id => params[:ques_id])
  end
end
