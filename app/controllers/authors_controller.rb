class AuthorsController < ApplicationController
    
    
    def index
      @authors = Author.all
      render json: @authors
    end
  
    def high_rank
      @high_rank_authors = Author.where(rank: [:senior, :professional])
      render json: @high_rank_authors
    end
  
    def show
      author = Author.find(params[:id])
      non_premium_articles = author.articles.where(premium: false)
      render json: { author: author, articles: non_premium_articles }
    end
  
    def show_premium
      author = Author.find(params[:id])
      articles = params[:only_premium] == "true" ? author.articles.where(premium: true) : author.articles
      render json: { author: author, articles: articles }
    end
   
      
  end
  