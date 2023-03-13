require 'rubygems'
require 'bundler'

Bundler.setup
root = ENV['APP_ROOT'] || File.expand_path('..', __FILE__)
port = 8080 || ENV['PORT']

Encoding.default_external = 'utf-8'

# https://devcenter.heroku.com/articles/ruby#logging
$stdout.sync = true

require File.join(root, 'app')
run Sinatra::Application, :port => port
