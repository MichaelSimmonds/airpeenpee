class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_account!

  attr_reader :current_user
  helper_method :current_user

  def current_user
    @current_user ||= current_account.try(:user)
  end

end
