class RegisteredUsersController < ApplicationController
  def index
    @all_users = RegisteredUser.order
  end

  def show
    @registered_user = RegisteredUser.find(params[:id])

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
end
