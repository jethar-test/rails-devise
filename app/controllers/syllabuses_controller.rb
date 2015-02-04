class SyllabusesController < ApplicationController

	before_action :get_course

	def show
		@syllabuses = @course.syllabuses
	end

	def get_course
		@course = Course.find(params[:course_id])
	end
end
