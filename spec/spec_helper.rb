require "./zee_overflow"
require "rack/test"
module FeatureSpec
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end
