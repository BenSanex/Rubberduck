class MentorsController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def new
  end

  def create
  	@mentor = Mentor.last
  	@mentor.is_mentor = true
  end

end
