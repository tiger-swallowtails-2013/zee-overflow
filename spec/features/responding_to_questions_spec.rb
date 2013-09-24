require 'spec_helper'

describe "Responding to a Question" do
  include FeatureSpec

  let(:question) { Question.create(title: "How much chuck could a woodchuck chuck?") }

  it "redirects to the home page" do

    post "/questions/#{question.id}/responses", {
      response: { }
    }
    expect(last_response["Location"]).to eq "http://example.org/"

  end

  it "saves responses with bodies" do

    post "/questions/#{question.id}/responses", {
      response: {
        body: "42"
      }
    }
    follow_redirect!
    expect(last_response.body).to include "42"
  end

  it "Doesn't save responses with bodies" do
    expect {
      post "/questions/#{question.id}/responses", {
        response: {}
      }
    }.not_to change { question.responses.count }
  end


end
