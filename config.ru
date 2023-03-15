require 'rubygems'
require 'bundler'
require 'rack/handler/webrick'
require 'sinatra'

Bundler.setup
root = ENV['APP_ROOT'] || File.expand_path('..', __FILE__)
set :port, ENV['PORT'] || 8080
set :bind, '0.0.0.0'

puts "[SERVER] Listening on #{:port}"

Encoding.default_external = 'utf-8'

# https://devcenter.heroku.com/articles/ruby#logging
$stdout.sync = true

require File.join(root, 'app')
run Sinatra::Application
