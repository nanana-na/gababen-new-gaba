class Note < ApplicationRecord
  attr_accessor :note_image_cache
  mount_uploader :note_image, NoteImageUploader
  belongs_to :user
  belongs_to :book
end
