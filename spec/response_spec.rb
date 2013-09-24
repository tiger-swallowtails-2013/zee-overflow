require 'spec_helper'

describe Response do
  describe "validations" do
    it "must have a body" do
      response = Response.new()
      expect(response).not_to be_valid
    end

  end

end
