class RegisteredUsersController < ApplicationController
  before_action :authenticate_registered_user!
end
