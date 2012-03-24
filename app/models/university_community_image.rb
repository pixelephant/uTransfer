class UniversityCommunityImage < ActiveRecord::Base

	mount_uploader :image_file, UniversityImageUploader

	belongs_to :university

end
