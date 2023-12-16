class CommentsController < ApplicationController
    before_action :set_idea, only: %i[create destroy]
    before_action :set_comment, only: %i[destroy]
  
    def create
      @comment = @idea.comments.new(comment_params)
  
      if @comment.save
        redirect_to idea_path(@idea), notice: "Comment was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def destroy
      @comment.destroy
  
      redirect_to idea_path(@idea), notice: "Comment was successfully destroyed."
    end
  
    private
  
    def set_idea
      @idea = Idea.find(params[:idea_id])
    end
  
    def set_comment
      @comment = @idea.comments.find(params[:id])
    end
  
    def comment_params
      params.require(:comment).permit(:user_name, :body)
    end
  end