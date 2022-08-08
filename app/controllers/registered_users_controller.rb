class RegisteredUsersController < ApplicationController
  def index
    @all_users = RegisteredUser.order
  end

  def show
    @registered_user = RegisteredUser.find(params[:id])
    @books = Book.where(user: params[:id])
    # @registered_user = RegisteredUser.find(params[:id])
    # if current_registered_user.role == 1
    #   # Search books table for all books in this user's cart
    #   @books = Book.where(user: params[:id])
    #
    #   # If checking out:
    #   #checkout_time = DateTime.now # MOVE TO CHECKOUT
    #   #return_time = checkout_time + 21 # MOVE TO CHECKOUT
    #
    #   @books.each do |book|
    #     # If checking out:
    #     # Set to unavailable, set checkout time to current time, and calculate and set due date
    #     #if book.available? && book.date_time_checked_out == nil && book.date_time_avail == nil # MOVE TO CHECKOUT
    #       #book.update_attributes(:available => false, :date_time_checked_out => checkout_time, :date_time_avail => return_time) # MOVE TO CHECKOUT
    #     #else # If returning # MOVE TO RETURN, ALL THIS STUFF
    #       # Check if any books are late
    #       checkout_time = book.date_time_checked_out # do we need this here?
    #       return_time = book.date_time_avail
    #       actual_return_time = DateTime.now
    #       if actual_return_time > return_time
    #         new_name = "🤮"
    #         new_name += @registered_user.first_name
    #         @registered_user.update_attributes(first_name: new_name)
    #       end
    #       # Reset everything
    #       book.update_attributes(:available => true, :date_time_checked_out => nil, :date_time_avail => nil, :user => nil)
    #     end
    #   end
    # end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  def find_user
    # @registered_users = RegisteredUser.where("card_number = ?", params[:card])
    # redirect_to(registered_user_path(@registered_users[0].id)) # alternative to where?
  end

  def checkout_books
    @user = RegisteredUser.find_by_card_number(params[:card])
    @books = Book.where(user: @user.id)
    checkout_time = DateTime.now
    return_time = checkout_time + 21 # Three weeks from now
    @books.each do |book|
      book.update_attributes(:available => false, :date_time_checked_out => checkout_time, :date_time_avail => return_time)
    end
    @success_message = "Books checked out successfully."
  end

  def return_books
    @user = RegisteredUser.find_by_card_number(params[:card])
    @books = Book.where(user: @user.id)
    @books.each do |book|
      # Reset everything
      book.update_attributes(:available => true, :date_time_checked_out => nil, :date_time_avail => nil, :user => nil)
    end
    @success_message = "Books returned successfully."
  end
end
