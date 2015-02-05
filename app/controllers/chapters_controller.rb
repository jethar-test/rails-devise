class ChaptersController < ApplicationController

	def index
		@syllabus = Syllabus.find(params[:syllabus_id])
		@chapters = @syllabus.chapters
	end

	def show
		@chapter = Chapter.find(params[:id])
		@syllabus = Syllabus.find(params[:syllabus_id])
	end

	def new
		@chapter = Chapter.new
	end

	def edit
	end

	def create
		@syllabus = Syllabus.find(params[:syllabus_id])
		@chapter  = Chapter.new(chapter_params)
		@chapter.syllabus = Syllabus.find(params[:syllabus_id])
		if @chapter.save
			flash[:notice]  = "Successfully create #{@chapter.title}"
			redirect_to syllabus_chapter_path(@syllabus,@chapter)
		else
			
			render :new
		end
	end

	def update
	end

	def destroy
	end

	private

	def chapter_params
		params.require(:chapter).permit(:number, :title)
	end

end
