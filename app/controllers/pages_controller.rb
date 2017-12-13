class PagesController < ApplicationController
  def index
  	@articles=Article.all
  end

  def categoris
  	@articles=Article.where(category_id: @categotry.id)
  end
end
