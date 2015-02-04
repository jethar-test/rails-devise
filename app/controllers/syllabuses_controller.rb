class SyllabusesController < ApplicationController	

	def index
		@course = Course.find(params[:course_id])
		@syllabuses = @course.syllabuses
	end

	def show
		@syllabus = Syllabus.find(params[:id])
	end

	def edit
		@syllabus = Syllabus.find(params[:id])
	end

	def update
		@syllabus = Syllabus.find(params[:id])
		if @syllabus.update(syllabus_params)
			redirect_to course_syllabus_path(@syllabus.course,@syllabus)
		else
			render 'edit'
		end
	end

	private

	def syllabus_params
		params.require(:syllabus).permit(:code, :semester,:name)
	end

end
