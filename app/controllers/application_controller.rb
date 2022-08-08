class ApplicationController < ActionController::Base
  alias_method :current_user, :current_registered_user # Could be :current_member or :logged_in_user
end
