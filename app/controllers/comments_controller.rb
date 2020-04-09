class CommentsController < ApplicationController
  def create
    comment = Comment.create!(content: params[:content], post_id: params[:post_id])
    render json: comment.to_json
  end
end

