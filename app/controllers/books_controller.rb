class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
  end
  def create
    # Retrieve the book parameters that we submit in the form
    title = params[:title]
    author = params[:author]
    description = params[:description]

    # Create a new record in the database with this parameters
    Book.create(title: title, author: author, description: description)

    # And then redirect to the index page
    redirect_to books_path
  end

  def edit
    # Retrieve the current book
    @book = Book.find(params[:id])
  end

  def update
    # Retrieve the current book
    @book = Book.find(params[:id])

    # update the record in the database with this parameters
    @book.update(title: params[:book][:title], author: params[:book][:author], description: params[:book][:description])

    # And then redirect to the index page
    redirect_to books_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
end
