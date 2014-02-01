require 'rubygems'
require 'bundler'
Bundler.setup(:default)

require 'rails/generators'
Dir['generators/**/**/*_generator.rb'].each { |g| require g }
