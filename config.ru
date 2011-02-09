require './wurfl-lite-middleware-heroku'
require 'wurfl-lite-middleware'
use WURFL::Middleware
set :run, false
run Sinatra::Application
