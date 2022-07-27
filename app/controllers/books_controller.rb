class BooksController < ApplicationController
  def index
    @books = Book.order
    @cart = 0 # Later, you should probably get this info from database
  end

  def show
  end

  def new
  end

  def edit
    @book = Book.find(params[:id])
    # Update :registered_user
    @book.update_attributes(:user => current_registered_user.id)
  end

  def delete
  end

  def create
  end

  def update
  end

  def add_to_cart
    #
  end

end
