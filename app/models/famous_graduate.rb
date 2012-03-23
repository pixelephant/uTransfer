class FamousGraduate < ActiveRecord::Base

	translates :title

	has_many :famous_graduate_translation
	accepts_nested_attributes_for :famous_graduate_translation

	mount_uploader :image_file, FamousPersonUploader

	validates :name, :title, :university_id, :presence => true

	belongs_to :university

end
