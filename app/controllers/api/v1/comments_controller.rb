class Api::V1::CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: { data: @comments }, status: :ok
    end
  
    def show; end
  
    def new; end
  
    def create; end
  
    def destroy; end
  
    def comment_params; end
  end
  