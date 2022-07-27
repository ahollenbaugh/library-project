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
    if !current_registered_user
      @message = "You must be logged in to check out a book."
    else
      @book = Book.find(params[:id])
      if @book.user != nil
        if @book.user == current_registered_user.id
          @message = "This book is already in your cart."
        else
          @message = "This book is already in someone else's cart."
        end
      else
        @book.update_attributes(:user => current_registered_user.id)
        @message = @book.title + " was successfully added to your cart."
      end
    end
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
