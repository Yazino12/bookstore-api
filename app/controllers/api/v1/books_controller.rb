class Api::V1::BooksController < ApplicationController
  def index
    @books = Book.all
    render json: { data: @books }, status: :ok
    # render json: BookSerializer.new(@books), adapter: :json
  end

  def show
    @book = Book.find_by_id(params[:id])
    render json: { data: @book }, status: :ok
  end

  def create
    @new_book = Book.new(book_params)
    
    if @new_book.save
      render json: { data: @new_book }, status: :ok
    else
      render json: {error: @new_book.errors.messages }, status: 422
    end
  end

  def update
    @update_book = Book.find_by_id(params[:id])

    if @update_book.update!(book_params)
      render json: { data: @update_book }, status: :ok
    else
      render json: {error: @update_book.errors.messages }, status: 422
    end
  end
    
  def destroy
    @delete_book = Book.find_by_id(params[:id])

    if !@delete_book.destroy
      render json: {error: @delete_book.errors.messages }, status: 422
  end
end

  private

  def book_params
    params.require(:book).permit(:title, :chapters, :image_url, :description, :category, :author)
  end

end
