class Requirement < ActiveRecord::Base

	translates :text

	has_many :requirement_translation
	accepts_nested_attributes_for :requirement_translation

end
