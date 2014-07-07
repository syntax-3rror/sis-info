class HomesController < ApplicationController
	before_filter :authenticate_user!, :except =>  [:index]
 
 
  def index
  	if user_signed_in? 
  	if current_user.cargo == 'mesero'
  	redirect_to '/waiter/index'
  		elsif current_user.cargo == 'chef'
  		redirect_to '/chef/index'
  	end
  end
end

end
