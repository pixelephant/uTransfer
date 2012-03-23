class University < ActiveRecord::Base
	translates :description, :campus

	has_many :university_translation
	accepts_nested_attributes_for :university_translation

	has_and_belongs_to_many :related_industries
	has_and_belongs_to_many :related_institutions

	has_many :faculties
	has_many :testimonials
	has_many :famous_graduates
	has_many :requirements

	has_many :university_images

	validates :name, :description, :deadline, :campus, :presence => true

	def default_for_enum
    I18n.available_locales
  end

end
