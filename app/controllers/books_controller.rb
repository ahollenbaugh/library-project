class BooksController < ApplicationController
  def index
    @books = Book.order
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
        else # If it's not already in their cart, add it to an array
          # Should change to an array of multiple users
          @book.update_attributes(:user => current_registered_user.id)
          @message = @book.title + " was successfully added to your cart."
        end
      else # If no one else has it, add it
        # Should change to an array of multiple users
        @book.update_attributes(:user => current_registered_user.id)
        @message = @book.title + " was successfully added to your cart."
      end
      # Get all books in cart
      @cart_books = Book.where(user: current_registered_user.id)
    end
  end

  def delete
  end

  def create
  end

  def update
  end

  def cart
    @cart_books = Book.where(user: current_registered_user.id)
  end

  def remove_from_cart
    @book = Book.find(params[:id])
    @book.update_attributes(:user => nil)
    @message = @book.title + " has been removed from your cart."
    #render(edit_book_path(params[:id]))
  end

  def checkout_books

  end

  def return_books
  end

  def change_status
  end
end
