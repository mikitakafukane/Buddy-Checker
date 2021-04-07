class GroupsController < ApplicationController
  
  def new
    @group = Group.new
    @group.students << current_student
  end
  
  def create
    if Group.create(group_params)
      redirect_to groups_path, notice: 'グループを作成しました'
    else
      render :new
    end
  end
  
  def index
    @groups = Group.all.order(updated_at: :desc)
  end
  
  def show
    @group = Group.find_by(id: params[:id])
    
    if !@group.students.include?(current_student)
      @group.students << current_student
    end
    
    @posts = Post.where(group_id: @group.id).all
  end
  
  private
  
  def group_params
    params.require(:group).permit(:name, :student_id)
  end
  
  def post_params
    params.require(:post).permit(:content)
  end
  
end
