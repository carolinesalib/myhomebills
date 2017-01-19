class BuildsController < ApplicationController
  before_action :authenticate_user!

  def new
  	@build = Build.new
    @subgroup = Subgroup.where(id: params[:subgroup])
  end

  def create
    @build = Build.new(resource_params)

    if @build.save
      redirect_to subgroup_path(@build.subgroup)
    else
      render :new
    end
  end

  private
  def resource_params
    params.require(:build).permit(:name, :subgroup_id, :due_date, :value)
  end
end
