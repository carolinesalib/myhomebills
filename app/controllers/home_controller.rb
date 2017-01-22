class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  	@groups = Group.where(user: current_user)

  	if params['date']
	  	@year = params['date']['year'].to_i
  		@month = params['date']['month'].to_i
  	end

  	if !@year
  		@year = Date.today.year
  	end

  	if !@month
  		@month = Date.today.month
  	end

		session[:current_year] = @year
		session[:current_month] = @month
  end
end
