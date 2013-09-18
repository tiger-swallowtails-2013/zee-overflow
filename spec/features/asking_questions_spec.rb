require "./zee_overflow"

describe "Asking a Question" do
	it "shows the questions on the home page" do
		Question.create({
			title: "How long did it take you to grow that magnficient beard?!"
		})
		get "/"
		expect(last_response.body).to include "grow that magnficient beard?!"
	end
	it "saves questions when the ask question form is submitted"
	it "doesn't save questions if the form doesn't have a title"
end