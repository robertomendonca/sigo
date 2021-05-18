class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    before_action :configure_permitted_parameters, if: :devise_controller?

    respond_to :json

=begin
def current_ability
    @current_ability ||= Abilities::ability_for(self.class, current_user)
  end
=end


protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { render json: exception, status: 403 }
    end 
  end
end
