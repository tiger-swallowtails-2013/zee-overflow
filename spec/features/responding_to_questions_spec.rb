require 'spec_helper'

describe "Responding to a Question" do
  include FeatureSpec

  let(:question) { Question.create(title: "How much chuck could a woodchuck chuck?") }

  xit "saves responses with bodies" do

    post "/questions/#{question.id}/responses", {
      body: "42"
    }
    expect(question.responses.last.body).to eq("42")
  end

  xit "Doesn't save responses with bodies" do
    expect {
      post "/questions/#{question.id}/responses", {
        body: "42"
      }
    }.not_to change { question.responses.count }
  end


end
