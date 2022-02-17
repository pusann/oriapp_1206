class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(created_at: :desc)
  end
  def  new
    @articles = Article.new
  end
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to  root_path
    else
      render :new
    end
  end
  
  private
  def article_params
    params.require(:article).permit(:nickname,:title,:text,:sex_id,:age).merge(user_id: current_user.id)
  end
end

