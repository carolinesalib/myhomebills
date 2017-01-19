class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  	@groups = Group.where(user: current_user)
  end
end
