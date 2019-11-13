class ConfirmationsController < ApplicationController
    def show

    end
    private
    def after_confirmation_path_for(resource_name, resource)
        sign_in(resource) # In case you want to sign in the user
        root_path
    end
    private
 
    def resource_name
        :user
    end
    helper_method :resource_name
    
    def resource
        @resource ||= User.new
    end
    helper_method :resource
    
    def devise_mapping
        @devise_mapping ||= Devise.mappings[:user]
    end
    helper_method :devise_mapping
    
    def resource_class
        User
    end
    helper_method :resource_class
end
