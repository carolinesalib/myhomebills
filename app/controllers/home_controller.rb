class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
  	@groups = Group.where(user: current_user)
  end

  def subgroups_of_group(group)
    Subgroup.where(group: group)
  end
  helper_method :subgroups_of_group

  def total_build_of_subgroup(subgroup)
  	Build.where(subgroup: subgroup).sum(:value)
  end
  helper_method :total_build_of_subgroup

  def total_build_of_group(group)
  end
  helper_method :total_build_of_group
end
