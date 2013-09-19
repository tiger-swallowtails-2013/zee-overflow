require 'spec_helper'

describe "Asking a Question" do
  include FeatureSpec

  context "when submitting the ask question form" do
    it "saves questions with titles" do
      post "/questions", { question: { title: "What is your favorite color?" } }
      expect(Question.last.title).to eq "What is your favorite color?"
    end
    it "doesn't save questions without titles"
  end

end
