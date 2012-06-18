class GroupsController < ApplicationController
  def new
    @group = Group.new
    @group.subscriptions.build
  end
  
  def create
    @member = Member.first
    @group = @member.groups.build(params[:group])
    
    if @group.save
      flash[:success] = "Saved"
      redirect_to group_path(@group)
    else
      render :new
    end
  end
  
  def show
    @group = Group.find(params[:id])
  end
end
