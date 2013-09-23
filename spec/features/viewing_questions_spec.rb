describe "Viewing Questions" do
  include FeatureSpec

  it "shows the questions on the home page" do
    Question.create({
      title: "How long did it take you to grow that magnficient beard?!"
    })
    get "/"
    expect(last_response.body).to include "grow that magnficient beard?!"
  end

  it "gives the heart count for the question" do
    question = Question.create({
      title: "Why do you not play pokemon all the time?"
    })
    question.hearts.create

    get "/"
    expect(last_response.body).to include "1 <3s - Why do you not play pokemon"

  end
end
