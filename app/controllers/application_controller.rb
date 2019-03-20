class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: 
    
    :devise_controller?  
    protected  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])  
    end
    include FindingHelper
    include PriceHelper

    def after_sign_up_path_for(resource_or_scope)
        if resource_or_scope.is_a?(User)
          user_path(1)    
        else
          super
        end
      end

    
end
