class BuildsController < ApplicationController
  before_action :authenticate_user!

  def new
  	@build = Build.new
  	@groups = Group.where(user: current_user)
  	@subgroups = Subgroup.where(group: @groups)
  end

  def create
    @build = Build.new(resource_params)

    if @build.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def resource_params
    params.require(:build).permit(:name, :subgroup_id, :due_date, :value)
  end
end
