class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  with_options presence: true do
    validates :title, presence: true
    validates :body, presence: true
    validates :image, presence: true
  end
end
