class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
  
  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      redirect_to @article # защита от повторной передачи данных но не хватает show
    else
      render action: 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:text, :title)
  end

end
