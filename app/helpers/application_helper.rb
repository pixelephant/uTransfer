module ApplicationHelper

	def int_to_eng(i)
		case i
			when 1
				return "one"
			when 2
				return "two"
			when 3
				return "three"
			when 4
				return "four"
			when 5
				return "five"
			when 6
				return "six"
		end
	end

end
