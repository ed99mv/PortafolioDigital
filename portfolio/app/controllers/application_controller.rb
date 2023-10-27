class ApplicationController < ActionController::Base
    include Pundit
    # Validación para guardar los datos a las nuevas columas de la tabla Users
    protect_from_forgery with: :exception 
    before_action :update_allowed_parameters , 
    if: :devise_controller? 
    protected 
    def update_allowed_parameters
        devise_parameter_sanitizer.permit( :sign_up ) { |u| u.permit( :email , :name , :password, :reset_password_token, :reset_password_sent_at, :remember_created_at )}
        devise_parameter_sanitizer.permit( :account_update ) { |u| u.permit( :email , :name , :password , :current_password, :reset_password_token, :reset_password_sent_at, :remember_created_at )}
    end 
    #----------------------------------------

    

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    private
  
    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to(fallback_location: root_path)
    end
  

    #Validación de adm or user
    # layout :set_layout

    # private
    # def set_layout
    #     if current_user&.admin?
    #         "admin"
    #     else
    #         "application"            
    #     end
    # end
end
