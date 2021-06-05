class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    
    def authorize_admin!
        unless current_user.admin?
            flash[:alert]= 'You must be an admin to acces this section'
            redirect_to root_path
        end
    end
end
