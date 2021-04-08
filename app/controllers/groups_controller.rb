class GroupsController < ApplicationController
  
  def index
    # if student_signed_in?
      @group = Group.new
      @groups = current_student.groups
      @nongroups = Group.where(id: Belonging.where.not(student_id: current_student.id).pluck(:id))
    # end
  end
  
  def create
    @group = Group.new(room_params)
    @group.save
    current_student.belongings.create(group_id: @group.id)
    redirect_to @group
  end
  
  def show
    @groups = current_student.groups
    @group = Group.find(params[:id])
    @posts = @group.posts
    @student = Student.find(params[:id])
  end
  
  private
  def room_params
    params.require(:group).permit(:name)
  end
    
end
