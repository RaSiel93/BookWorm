class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :configure_valid_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def switch_theme
    if cookies[:style] == 'black'
      cookies[:style] = 'white'
    else
      cookies[:style] = 'black'
    end
    redirect_to :back
  end

  def switch_locale
    if cookies[:locale] == 'ru'
      cookies[:locale] = 'en'
    else
      cookies[:locale] = 'ru'
    end
    redirect_to :back
  end

  def configure_valid_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation) }
  end
end
