class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end

    def after_sign_in_path_for(resource)
      lists_path
    end
    
    def after_sign_out_path_for(resource)
      root_path
    end

  private
    def login_required
      flash[:danger] = "ログインしてください"
      redirect_to new_user_session_path unless current_user
    end

end
