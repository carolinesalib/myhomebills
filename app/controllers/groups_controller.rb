class GroupsController < ApplicationController
  before_action :authenticate_user!

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(resource_params)
    @group.user = current_user

    if @group.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private
  def resource_params
    params.require(:group).permit(:name, :description, :user_id)
  end
end
