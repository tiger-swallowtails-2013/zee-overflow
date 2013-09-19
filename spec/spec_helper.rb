require "./zee_overflow"
require "rack/test"
module FeatureSpec
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end

ActiveRecord::Base.logger = Logger.new('/dev/null')

RSpec.configure do |config|
  config.before do
    Question.destroy_all
  end
end
