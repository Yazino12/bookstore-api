class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: { data: @comments }, status: :ok
  end

  def show
    @comment = Comment.find_by_id(params[:id])
    render json: { data: @comment }, status: :ok
  end

  def create
    @new_comment = Comment.new(comment_params)

    if @new_comment.save
      render json: { data: @new_comment }, status: :ok
    else
      render json: {error: @new_comment.errors.messages }, status: 422
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :book_id)
  end
end
