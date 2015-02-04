class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :persist_login_param
  before_action :configure_permitted_parameters, if: :devise_controller?

  

  protected

  def persist_login_param
    session[:type] = params[:type]
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :type
  end

  def after_sign_in_path_for(resource)
    # return the path based on resource
    courses_path
  end

end
