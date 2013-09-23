require 'active_record'
require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:///db/zee_overflow_development.sqlite3"

class Question < ActiveRecord::Base
  validates_presence_of :title
  has_many :hearts

  def heart_count
    hearts.count
  end
end

class Heart < ActiveRecord::Base
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
