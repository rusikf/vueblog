class PostsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render json: Post.ordered.to_json(include: :comments) }
    end
  end

  def new
  end

  def create
    Post.create!(title: params[:title], content: params[:content])
    head :ok
  end

  def update
    post = Post.find_by(id: params[:id])
    post.update_attribute(:published, params[:published])
    head :ok
  end
end
