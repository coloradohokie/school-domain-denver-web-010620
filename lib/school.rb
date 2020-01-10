require 'pry'

class School
	def initialize(name)
		@name = name
		@roster = {}
	end

	def name
		@name
	end

	def roster
		@roster
	end

	def add_student(student_name,grade)
		if !@roster[grade]
			@roster[grade] = []
		end
		@roster[grade] << student_name
	end

	def grade(grade_num)
		@roster[grade_num]
	end

	def sort
		@roster.each do |key, value|
			roster[key] = value.sort
		end		
	end



end

school =School.new("Bayside High School")

school.add_student("Zach Morris",9)
school.add_student("Homer Simpson", 2)
school.add_student("AJ Slater", 9)

p school.sort