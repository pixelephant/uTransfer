class RelatedIndustry < ActiveRecord::Base
	has_and_belongs_to_many :universities

	mount_uploader :image_file, IndustryUploader

	validates :name, :image_file, :presence => true

end
