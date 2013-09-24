require 'active_record'
require "sinatra"
require "sinatra/activerecord"


ENV['DATABASE_URL'] ||= "postgres://localhost/zee_overflow_development"
set :database, ENV['DATABASE_URL']

class Question < ActiveRecord::Base
  validates_presence_of :title
  has_many :hearts
  has_many :responses

  def heart_count
    hearts.count
  end
end

class Heart < ActiveRecord::Base
end

class Response < ActiveRecord::Base
  validates_presence_of :body
end

configure :test do
  set :raise_errors, true
end
get '/' do
  @question = Question.new
  @questions = Question.all
  erb :questions
end

post '/questions' do
  @question = Question.create(params[:question])
  @questions = Question.all
  erb :questions
end

post '/questions/:question_id/hearts' do
  question = Question.find_by_id(params[:question_id])
  question.hearts.create
  redirect "/"
end

post '/questions/:question_id/responses' do
  question = Question.find_by_id(params[:question_id])
  question.responses.create(params[:response])
end
