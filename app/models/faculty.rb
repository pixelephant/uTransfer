class Faculty < ActiveRecord::Base

	translates :desc, :name

	has_many :faculty_translation
	accepts_nested_attributes_for :faculty_translation

end
