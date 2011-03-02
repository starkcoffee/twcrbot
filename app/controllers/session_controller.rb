class SessionController < ApplicationController
  def create
    uid = request.env['rack.auth']['uid']
    redirect_to '/' unless uid
    session[:uid] = uid
    redirect_to session[:previous_url]
  end
end