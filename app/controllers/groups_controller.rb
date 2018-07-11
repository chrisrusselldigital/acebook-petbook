class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def index
    @group = Group.new
    @groups = Group.all
  end

  def create
    @group = Group.create(member: current_user.firstname)
    redirect_to groups_path
  end

end
