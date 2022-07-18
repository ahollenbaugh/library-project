class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to("/library/log_in")
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end

  def update
  end

  def destroy
  end

end
