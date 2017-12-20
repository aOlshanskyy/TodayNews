class Article < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :articlescomments
	has_many :votes
end
