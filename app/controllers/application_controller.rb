class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end

    def after_sign_in_path_for(resource)
      lists_path # ログイン後に遷移するpathを設定
    end
    
    def after_sign_out_path_for(resource)
      root_path # ログアウト後に遷移するpathを設定
    end

    def forbid_login_user
      if current_user
        redirect_to("/lists")
      end
    end

end
