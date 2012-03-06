class FamousGraduate < ActiveRecord::Base

	translates :title

	has_many :famous_graduate_translation
	accepts_nested_attributes_for :famous_graduate_translation

end
