require "sinatra/activerecord/rake"
require './zee_overflow'


namespace :db  do

  desc "Drops a database"
  task :drop do
    exec('dropdb zee_overflow_development')
  end
end
