class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to "/animes/#{params[:anime_id]}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, anime_id: params[:anime_id])
  end
end
