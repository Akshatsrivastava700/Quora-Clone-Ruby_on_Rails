
class VotesController < ApplicationController
  def upvote
    if current_user
      @vote = Vote.new
      @vote.upvote = 1
      @vote.downvote = 0
      @vote.answer_id = params[:ans_id]
      @vote.question_id = params[:ques_id]
      @vote.user_id = current_user.id
      @vote_check = Vote.where(answer_id: params[:ans_id], user_id: current_user.id)
      if @vote_check.count == 0
        if @vote.save
          redirect_to new_answer_path(:ques_id => params[:ques_id])
        else
          redirect_to root_path
        end
      elsif @vote_check.where(downvote: 1).count == 1
        @vote_check.delete(@vote_check.ids)
        if @vote.save
          redirect_to new_answer_path(:ques_id => params[:ques_id])
        else
          redirect_to root_path
        end
      else
        @vote_check.delete(@vote_check.ids)
        redirect_to new_answer_path(:ques_id => params[:ques_id])
      end
    end
  end

  def downvote
    if current_user
      @vote = Vote.new
      @vote.upvote = 0
      @vote.downvote = 1
      @vote.answer_id = params[:ans_id]
      @vote.question_id = params[:ques_id]
      @vote.user_id = current_user.id
      @vote_check = Vote.where(answer_id: params[:ans_id], user_id: current_user.id)
      if @vote_check.count == 0
        if @vote.save
          redirect_to new_answer_path(:ques_id => params[:ques_id])
        else
          redirect_to root_path
        end
      elsif @vote_check.where(upvote: 1).count == 1
        @vote_check.delete(@vote_check.ids)
        if @vote.save
          redirect_to new_answer_path(:ques_id => params[:ques_id])
        else
          redirect_to root_path
        end
      else
        @vote_check.delete(@vote_check.ids)
        redirect_to new_answer_path(:ques_id => params[:ques_id])
      end
    end
  end
end
