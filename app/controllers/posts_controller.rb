class PostsController < ApplicationController
  
  def show
    @student = Student.find(params[:id])
    @group = Group.find(params[:id])
    @posts = @group.posts
    @post = Post.new(group_id: @group.id)
  end

  def create
    @post = current_student.posts.new(post_params)
    @post.save
  end

  private
  def post_params
    params.require(:post).permit(:content, :group_id)
  end
  
end
