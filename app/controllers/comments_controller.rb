class CommentsController < ApplicationController

  def create 
    @article = Article.find(params[:article_id])
    @article.comments.create(comment_params)

    redirect_to article_path(@article)
  end


  

  def comment_params
    params.require(:comment).permit(
    	:author, :body, :vote_1, 
    	:vote_2, :vote_3, :vote_4, 
    	:vote_5, :vote_6, :vote_7, 
    	:vote_8, :vote_9, :vote_10, 
    	:group)
  end



end
