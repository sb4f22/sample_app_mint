module ApplicationHelper
	#Returns the full title on a per-page basis.
	def full_title(page_title)								#Define Method (like f(X))
		base_title = "Ruby on Rails Tutorial Sample App" 	# Variable Definition- 3 variables in this case
		if page_title.empty? 								#Boolean Test
			base_title 										#Implicit Return
		else
			"#{base_title} | #{page_title}" 				#String interpolation (turning variable into a string)
		end
	end
end
