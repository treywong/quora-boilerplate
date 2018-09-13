require_relative './config/init.rb'
set :run, true

after { ActiveRecord::Base.connection.close }



#To check the table and delete row
#psql -d quora_clone_development
#SELECT * FROM users
#ctrl + z to exit

#irb -r ./app.rb