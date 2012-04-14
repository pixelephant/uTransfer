class ExperienceImage < ActiveRecord::Base

	mount_uploader :image_file, ImageUploader

	belongs_to :testimonial
end
