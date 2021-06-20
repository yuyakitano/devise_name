class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    unless @book.save
      @books = Book.all
      render 'index'
    end
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def destroy
    @books.destroy
    redirect_to books_path
  end

  private

    def book_params
      params.require(:book).permit(:title, :body)
    end
end
