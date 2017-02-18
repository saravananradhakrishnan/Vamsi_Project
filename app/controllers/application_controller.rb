class ApplicationController < ActionController::Base
 respond_to :html, :json
 #protect_from_forgery unless: -> { request.format.json? }
 #protect_from_forgery with: :exception
 before_action :configure_permitted_parameters, if: :devise_controller?
 before_action :set_user ,if: :api_request?


  def set_user
   puts "calling application controller function"
   @user = User.first
  end

  protected

  def configure_permitted_parameters
    permitted_attr = [:username,:mobile]
    devise_parameter_sanitizer.permit(:sign_up,keys: permitted_attr) 
    devise_parameter_sanitizer.permit(:account_update,keys: permitted_attr) 
  end
end

  private


  def api_request?
    request.format.json? || request.format.xml?
  end
