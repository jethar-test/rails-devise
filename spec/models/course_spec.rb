describe Course do

	it "has a valid course" do
    	expect(build(:course)).to be_valid
  	end

	it "has one syllabus" do
		expect(create(:course).syllabuses.count).to eq 1 
	end

end
