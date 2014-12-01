class ArticlesController < ApplicationController
  
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(create_params)
    if @article.save
      redirect_to articles_path, notice: 'Article is created successfully'
    else
      render :new
    end
  end
  
  private
    def create_params
      params.require(:article).permit(:title, :text)
    end

    def article_id
      params.require(:id)
    end
end
