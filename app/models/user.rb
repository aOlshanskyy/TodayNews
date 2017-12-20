class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :articles
         has_many :articlescomments
         has_many :votes
         has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>", small: "50x50>" }, default_url: "/images/Default.png"
           validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
