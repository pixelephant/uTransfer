class Requirement < ActiveRecord::Base

	translates :text

	has_many :requirement_translation
	accepts_nested_attributes_for :requirement_translation

	belongs_to :university

	validates :text, :tution_fee, :university_id, :level, :presence => true

end
