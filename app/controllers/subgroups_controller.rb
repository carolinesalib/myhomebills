class SubgroupsController < ApplicationController
  before_action :authenticate_user!

  def new
  	@subgroup = Subgroup.new
  	@groups = Group.where(user: current_user)
  end

  def create
    @subgroup = Subgroup.new(resource_params)

    if @subgroup.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def resource_params
    params.require(:subgroup).permit(:name, :description, :group_id)
  end
end
