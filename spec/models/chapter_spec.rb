describe Chapter do

	it "has a valid chapter" do
    	expect(build(:chapter, number:10)).to be_valid
  	end

  	it "is invalid without title" do
    	chapter = build(:chapter, title: nil)
    	chapter.valid?
    	expect(chapter.errors[:title]).to include("can't be blank")
	end

    it "is invalid without number" do
    	chapter = build(:chapter, number: nil)
    	chapter.valid?
    	expect(chapter.errors[:number]).to include("can't be blank")
  	end

  	it "belongs to a syllabus" do
    	chapter = build(:chapter)
    	expect(chapter.syllabus).to be_valid
  	end

end
