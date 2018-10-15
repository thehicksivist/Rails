class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
        @articles = Article.all
    end
    def new
        @article = Article.new
    end
    def create
        # creates a new instance of the article model
        # populated with data from the params hash
        @article= Article.new(article_params)
        # save the new article to the db
        if @article.save
        # redirect to the page
        redirect_to @article
        else 
            render 'new'
        end
    end
    def update
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end
    def show
    end

    def edit
    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    def set_article
        @article = Article.find(params[:id])
    end

    private

    def article_params
        params.require(:article).permit(:title, :content)
    end

end
