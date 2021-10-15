class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(id: @book)
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end

end