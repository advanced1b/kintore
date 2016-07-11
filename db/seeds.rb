require 'factory_girl_rails'
system('bundle exec rake db:migrate:reset')

FactoryGirl.create(:user, login: "login1", password: "password")