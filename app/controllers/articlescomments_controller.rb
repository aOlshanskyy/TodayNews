class ArticlescommentsController < ApplicationController

	def create
		params[:articlescomment][:article_id] = params[:article_id]
		params[:articlescomment][:user_id] = current_user.id
		@articlescomment = Articlescomment.create(articlescomments_params)
		if @articlescomment.save
			redirect_to article_path(params[:article_id])
		else
			@articlescomment.errors.full_messages.each do |msg|
				@msg = msg
		end  
    	flash[:notice] = "#{@msg}"
    	redirect_to article_path(params[:article_id])
	    end
	end

	private
	def articlescomments_params
		params.require(:articlescomment).permit(:user_id, :article_id, :textofcom)
	
	end

end
