class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  RESTRICTED_PATHS = [
    "/users/sign_in", "/users/sign_up", "/users/password/new",
    "/users/password/edit", "/users/confirmation", "/users/sign_out"
  ]

  after_filter :store_location

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  def store_location
    # store last url - this is needed for post-login redirect to whatever the user last visited.
    if request.get? &&
      !RESTRICTED_PATHS.include?(request.path) &&
      !request.xhr?
      session[:previous_url] = request.fullpath
    end
  end

end
