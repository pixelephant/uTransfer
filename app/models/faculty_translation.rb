class FacultyTranslation < ActiveRecord::Base
	belongs_to :faculty

	validates :faculty_id, :locale, :name, :desc, :presence => true

	def locale_enum
    I18n.available_locales
  end
end
