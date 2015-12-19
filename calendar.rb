# Demo of how to create an html table using a method and referencing it from the view with:
#   <%= calendar.html_safe %>
# Sidenote: the .html_safe is an inbuilt method to define that the output from the method is safe to output.
# without the .html_safe the rendered output (in the source view) swaps the characters for their &lt; type tags so won't display correctly.

def calendar
	cal = "<table border='1'><tr>"
	days = %w(Sun Mon Tue Wed Thu Fri Sat)
	day.each do | day |
	  cal += "<td>#{day}</dt>"
	end
	cal += "</tr></table>"
	return cal
end
end

# Task: generate a calendar based on the current day.
