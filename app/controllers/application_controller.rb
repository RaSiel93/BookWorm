class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def switch_theme
    if cookies[:style] == 'black'
      cookies[:style] = 'white'
    else
      cookies[:style] = 'black'
    end
    redirect_to :back
  end
end
