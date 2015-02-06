describe Syllabus do

	it "has a valid syllabus" do
    	expect(build(:syllabus)).to be_valid
  	end

  	it "is invalid without name" do
    	chapter = build(:syllabus, name: nil)
    	chapter.valid?
    	expect(chapter.errors[:name]).to include("can't be blank")
	end

    it "is invalid without code" do
    	chapter = build(:syllabus, code: nil)
    	chapter.valid?
    	expect(chapter.errors[:code]).to include("can't be blank")
  	end

  	it "has one chapter" do
  		expect(create(:syllabus).chapters.count).to eq 1 
  	end

end
