class University < ActiveRecord::Base
	translates :description, :campus

	has_many :university_translation
	accepts_nested_attributes_for :university_translation

	def default_for_enum
    I18n.available_locales
  end

end
