require 'spec_helper'
describe "Hearting a Question" do
  include FeatureSpec
  it "adds a heart to the question" do
    question = Question.create(title: "Why are you so angry?")
    expect {
      post "/questions/#{question.id}/hearts"
    }.to change { question.hearts.count }.by(1)
  end
  it "redirects to the home page" do
    question = Question.create(title: "Why are you so angry?")
    post "/questions/#{question.id}/hearts"
    expect(last_response["Location"]).to eq "http://example.org/"
  end
end
