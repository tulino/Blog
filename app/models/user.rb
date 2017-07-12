class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :articles
  has_many :comments
  after_create :self_article
  def self_article
    Article.create(title:"hosgeldin", text:"hosgeldin #{self.email}", user_id: self.id)
  end
end
