class UniversityImages < ActiveRecord::Base

	belongs_to :university
	mount_uploader :image_file, UniverityImageUploader

end
