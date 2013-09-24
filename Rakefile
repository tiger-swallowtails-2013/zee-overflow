require "sinatra/activerecord/rake"
require './zee_overflow'
namespace :db  do

  desc "Drops a database"
  task :drop do
    exec('dropdb zee_overflow_development')
  end
end

begin
  require 'jasmine'
  load 'jasmine/tasks/jasmine.rake'
rescue LoadError
  task :jasmine do
    abort "Jasmine is not available. In order to run jasmine, you must: (sudo) gem install jasmine"
  end
end
