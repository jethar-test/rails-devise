class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
	end

	def edit
		@course = Course.find(params[:id])
	end

	def destroy
		
	end
end
