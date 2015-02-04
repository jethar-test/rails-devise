class SyllabusesController < ApplicationController	

	def index
		@course = Course.find(params[:course_id])
		@syllabuses = @course.syllabuses
	end

	def show
		@course = Course.find(params[:course_id])
		@syllabuses = @course.syllabuses
	end

	def edit
		@syllabus = Syllabus.find(params[:id])
	end

end
