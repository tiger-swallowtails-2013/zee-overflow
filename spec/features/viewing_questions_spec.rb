describe "Viewing Questions" do
  include FeatureSpec

  it "shows the questions on the home page" do
    Question.create({
      title: "How long did it take you to grow that magnficient beard?!"
    })
    get "/"
    expect(last_response.body).to include "grow that magnficient beard?!"
  end

end
