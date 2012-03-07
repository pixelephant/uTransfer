class University < ActiveRecord::Base
	translates :description, :campus

	has_many :university_translation
	accepts_nested_attributes_for :university_translation

	has_and_belongs_to_many :related_industries
	has_and_belongs_to_many :related_institutions

	def default_for_enum
    I18n.available_locales
  end

end
