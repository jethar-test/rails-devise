class SyllabusesController < ApplicationController	

	def index
		user = current_user
		@course = Course.find(params[:course_id])

		if user.class == Student && user.enrollments.empty?
			enrolment = Enrollment.new
			enrolment.student = current_user
			enrolment.course = @course

			if enrolment.save
				flash[:notice] = "You have been successfully enrolled"
				redirect_to :back
			end
		end
		@course = Course.find(params[:course_id])
		@syllabuses = @course.syllabuses
	end

	def show
		@course = Course.find(params[:course_id])
		@syllabus = Syllabus.find(params[:id])
	end

	def new
		@syllabus = Syllabus.new
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

	def create
		@syllabus  = Syllabus.new(syllabus_params)
		@syllabus.course = Course.find(params[:course_id])
		if @syllabus.save
			flash[:notice]  = "Successfully create #{@syllabus.name}"
			redirect_to course_syllabus_path(@syllabus.course,@syllabus)
		else
			
			render :new
		end
	end

	def destroy
		syllabus = Syllabus.find(params[:id])
		if syllabus.destroy
			flash[:notice] = "Successfully deleted #{syllabus.name}"
			redirect_to :back
		end
	end

	private

	def syllabus_params
		params.require(:syllabus).permit(:code, :semester,:name)
	end

end
