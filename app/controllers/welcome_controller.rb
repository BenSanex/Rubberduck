class WelcomeController < ApplicationController
skip_before_action :authenticate_user!
  def index
  	if current_user
  		@user = current_user
  	end
  end
  
end
