class UniversityImage < ActiveRecord::Base

	belongs_to :university
	mount_uploader :image_file, UniversityImageUploader

end
