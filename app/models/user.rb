class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :talks, dependent: :destroy
  has_many :comments, dependent: :destroy
  mount_uploader :profile_image, ProfileImageUploader
  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end
end