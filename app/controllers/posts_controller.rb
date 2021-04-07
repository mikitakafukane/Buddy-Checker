class PostsController < ApplicationController
  
  def new
    @post = current_student.posts.new
    @group = Group.find_by(id: params[:group_id])
  end
  
  def create
    @group = Group.find_by(id: params[:group_id])
    @post = current_student.posts.new(post_params)
    @post.group_id = params[:group_id]
    if @post.save
      redirect_to group_path(@group.id)
    end
  end
  
  private
  
  def post_params
    params.require(:post).permit(:content)
  end
  
end
