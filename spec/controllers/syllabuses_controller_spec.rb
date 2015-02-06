require 'rails_helper'
	describe SyllabusesController  do

		describe 'GET #show' do

			it "assigns the requested syllabus to @syllabus" do 
				course = create(:course)
				syllabus = course.syllabuses.first
				get :show , id: syllabus, course_id: course
				expect(assigns(:syllabus)).to eq syllabus		
			end

			it "renders the show template " do 
				course = create(:course)
				syllabus = course.syllabuses.first
				get :show , id: syllabus, course_id: course
				expect(response).to render_template :show
			end
		end

		describe 'GET #new' do

			it "assigns a new syllabus to @syllabus" do 
				get :new
				expect(assigns(:syllabus)).to be_a_new(Syllabus)
			end	

			it "renders the new template " do 
				get :new
				expect(response).to render_template :new
			end
		end	

		describe 'GET #edit' do

			it "assigns the requested syllabus to @syllabus" do 
				course = create(:course)
				syllabus = course.syllabuses.first
				get :edit , id: syllabus, course_id: course
				expect(assigns(:syllabus)).to eq syllabus	
			end	

			it "renders the edit template " do 
				course = create(:course)
				syllabus = course.syllabuses.first
				get :edit , id: syllabus, course_id: course
				expect(response).to render_template :edit
			end
		end

		describe 'POST #create' do
			
			it "saves the new syllabus" do 
				expect {
					post :create , syllabus: attributes_for(:syllabus), course_id: create(:course).id
				}.to change(Syllabus, :count).by(1)
			end

			
		end	
	end