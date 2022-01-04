class ArticlesController < ApplicationController
 

  before_action :authenticate_user!

  def edit
      @article = Article.find(params[:id]) 
  end


def update

  @article = Article.find(params[:id])
     if  @article.update(article_params) 
        redirect_to @article

      else
        render action: 'edit'
      end

end

  def index
    @articles = Article.all
@v1 = 0
@v2 = 0
@v3 = 0
@v4 = 0
@v5 = 0
@v6 = 0
@v7 = 0
@articles.each do |article|
  article.comments.each do |comment|
    @v1 += comment.vote_1 
    @v2 += comment.vote_2 
    @v3 += comment.vote_3 
    @v4 += comment.vote_4
    @v5 += comment.vote_5 
    @v6 += comment.vote_6 
    @v7 += comment.vote_7 
  end
end

  end

  def show
    @article = Article.find(params[:id]) 
  end
  
  def new
     @larticle = Article.last
    if @larticle == nil
      @artnum = 1
    else
      @artnum = @larticle.title.to_i + 1

    end 
  end


  def create
    @article = Article.new(article_params)
    @larticle = Article.last

    if @larticle == nil
      @artnum = 1
    else
      @artnum = @larticle.title.to_i + 1

    end 
      
      if  @article.save
        redirect_to @article
      else
        render action: 'new'
      end
  end


def destroy
  @article = Article.find(params[:id])
  
 @article.comments.each do |comment|
    comment.destroy
  end

  @article.destroy


  redirect_to articles_path

end


  private 

  def article_params
    params.require(:article).permit(:title, :text)
  end


end
