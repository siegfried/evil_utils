require 'rubygems'
require 'bundler'
Bundler.setup(:default)

require 'rails/generators'
require 'generators/evil_utils/scaffold_controller/scaffold_controller_generator'
require 'generators/evil_utils/scaffold_controller_spec/scaffold_controller_generator_spec'
