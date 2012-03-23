class Faculty < ActiveRecord::Base

	translates :desc, :name

	has_many :faculty_translation
	accepts_nested_attributes_for :faculty_translation

	belongs_to :university

	has_many :testimonials

	validates :name, :desc, :university_id, :presence => true

	def level_enum
    {:bsc => 1, :msc => 2, :phd => 3}
  end

end
