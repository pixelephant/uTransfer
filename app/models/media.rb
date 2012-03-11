class Media < ActiveRecord::Base

	belongs_to :text_block

	mount_uploader :image_file, ImageUploader

	validates :image_file, :title, :presence => true

end
