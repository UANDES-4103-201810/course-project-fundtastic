class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:lastname,:address,:email,:password,:creditcard])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:lastname,:address,:email,:password,:creditcard])
  end

end
