require 'spec_helper'

describe "Asking a Question" do
  include FeatureSpec

  context "when submitting the ask question form" do
    it "saves questions with titles" do
      post "/questions", { question: { title: "What is your favorite color?" } }
      expect(last_response.body).to include "What is your favorite color?"
    end

    context "when the question doesn't have title" do
      it "doesn't save the question" do
        expect {
          post "/questions", { question: {} }
        }.not_to change { Question.count }
      end
      it "informs the users that the question needs a title" do
        post "/questions", { question: {} }
        expect(last_response.body).to include "Title can't be blank"
      end
    end
  end

end
