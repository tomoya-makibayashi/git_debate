class ApplicationController < ActionController::Base
    
    before_action :authenticate_user!, except: [:index]
    before_action :configure_permitted_parameters, if: :devise_controller?
    layout :layout_by_resource
    
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:text, :nickname])
    end
    
    protected
    def layout_by_resource
        if devise_controller?
            "devise"
        else
            "application"
        end
    end
end
