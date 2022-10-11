class Api::V1::BooksController < ApplicationController
    def index
        @books = Book.first
        render json: { data: @books }, status: :ok
    end
  
    def show; end

end
  