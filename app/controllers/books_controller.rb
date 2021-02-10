class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @books = Book.all
    if @book.save
      flash[:notice] = 'Book was successfully created.'
        redirect_to  user_registration_path
      else
          render :index
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
