class ApplicationController < ActionController::Base
    include ActionController::Serialization
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:fname])
      devise_parameter_sanitizer.permit(:account_update, keys: [:fname])
    end
end
