class ApplicationController < ActionController::API
    include ActionController::MimeResponds

    respond_to :json
=begin
def current_ability
    @current_ability ||= Abilities::.ability_for(self.class, current_user)
  end
=end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { render json: exception, status: 403 }
    end 
  end
end
