class Country < ActiveRecord::Base
	has_many :personals
	has_many :testimonials

	default_scope :order => 'priority DESC'
end
