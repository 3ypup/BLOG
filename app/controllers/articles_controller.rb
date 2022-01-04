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
  end

  def show
    @article = Article.find(params[:id]) 
  end
  
  def new
     @larticle = Article.last
    if @larticle == nil
      @artnum = 1
    else
      @artnum = @article.title.to_i + 1

    end 
  end


  def create
    @article = Article.new(article_params)
    @larticle = Article.last

    if @larticle == nil
      @artnum = 1
    else
      @artnum = @article.title.to_i + 1

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
