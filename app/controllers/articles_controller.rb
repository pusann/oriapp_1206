class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(created_at: :desc)
  end
  def  new
    @articles = Article.new
  end
  private
  def articles_params
    params.require(:article).parmit(:nickname,:title,:text,:sex_id,:age).merge(user_id: current_user.id)
  end
end
