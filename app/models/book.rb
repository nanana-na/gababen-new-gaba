class Book < ApplicationRecord
  attr_accessor :image_cache
  mount_uploader :book_image, BookImageUploader
  belongs_to :user
  has_many :notes
end
