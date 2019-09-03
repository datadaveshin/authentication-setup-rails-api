class ApplicationController < ActionController::Base
  # Removes the csrf token - as making an api
  skip_before_action :verify_authenticity_token
end
