class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#  protect_from_forgery with: :exception
 
before_filter :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :cargo
     devise_parameter_sanitizer.for(:sign_in) << :cargo
    devise_parameter_sanitizer.for(:account_update) << :cargo

  end


  def after_sign_in_path_for(resource)
   if user_signed_in? 
   	if current_user.cargo == 'mesero'

  	'/waiter/index'
 
	elsif current_user.cargo == 'chef'
  	"/chef/index"
	elsif current_user.cargo == 'bartender'
	'/bartender/index'
	elsif current_user.role == 'admin'
	 '/administrator/index'

	
end

end
 end
  def after_sign_up_path_for(resource)
  	
 if current_user.cargo == 'mesero'
  	'/waiter/index'
	elsif current_user.cargo == 'chef'
  	"/chef/index"
	elsif current_user.cargo == 'bartender'
	"/bartender/index"
	elsif current_user.role == 'admin'
	 #'/administrator/index'
	
end

end
end
