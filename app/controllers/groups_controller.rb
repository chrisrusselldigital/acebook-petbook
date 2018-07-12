class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def index
    @group = Group.new
    @groups = Group.all
  end

  # def create
  #   # @group = Group.create(name: "test-name")
  #   redirect_to groups_path
  # end

  def update
    @group = Group.new
    @group.update_attributes(
      name: "new group"
    )
    redirect_to groups_path
  end

end
