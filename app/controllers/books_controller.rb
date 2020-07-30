class BooksController < ApplicationController
  def top
  end

  def index
  	@books = Book.all
  	@book = Book.new
  end

  def create
  	@book = Book.new(book_params)
  	@book.save
  	redirect_to index_path(@book)
  end


  def show
  	
  end

  def edit
  end

  private
  def book_params
  params.require(:book).permit(:title,:text)
  end
end
