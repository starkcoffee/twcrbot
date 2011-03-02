class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_with_cas
    unless session[:uid]
      puts "no uid - remembering url \"#{request.fullpath}\""
      session[:previous_url] = request.fullpath
      redirect_to '/auth/cas'
    end
  end
end
