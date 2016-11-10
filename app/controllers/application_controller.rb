class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def root
    @users = User.all
  end
end
