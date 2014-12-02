class ArticlesController < ApplicationController

  def index
    @articles = Article.all.recent.paginate(page: page_params)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(create_params)
    if @article.save
      redirect_to articles_url, notice: 'Article is created successfully'
    else
      render :new
    end
  end

  def edit
    @article = Article.find(article_id)
  end

  def update
    @article = Article.find(article_id)
    if @article.update_attributes(create_params)
      redirect_to article_path(@article), notiec: 'Article is updated successfully'
    else
      render :edit
    end
  end

  private
    def create_params
      params.require(:article).permit(:title, :text)
    end

    def article_id
      params.require(:id)
    end

    def page_params
      params.fetch :page, 1
    end
end
