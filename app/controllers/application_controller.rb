class ApplicationController < ActionController::Base
	include Response
	include ExceptionHandler

  protect_from_forgery with: :exception
  before_action :authenticate_user!
end
