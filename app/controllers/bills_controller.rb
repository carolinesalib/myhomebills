class BillsController < ApplicationController
  before_action :authenticate_user!

  def new
  	@bill = Bill.new
    @subgroup = Subgroup.where(id: params[:subgroup])
  end

  def create
    @bill = Bill.new(resource_params)

    if @bill.save
      redirect_to subgroup_path(@bill.subgroup)
    else
      render :new
    end
  end

  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy

    redirect_to subgroup_path(@bill.subgroup)
  end

  private
  def resource_params
    params.require(:bill).permit(:name, :subgroup_id, :due_date, :value)
  end
end
