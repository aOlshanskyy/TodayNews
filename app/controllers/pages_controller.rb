class PagesController < ApplicationController
	def index
	  @articles=Article.all
	  @votes=[]
      @articles.each do |article|
          @votes[article.id] = Vote.where(article_id: article.id).count
      end
	end

end
