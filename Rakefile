# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "evil_utils"
  gem.homepage = "http://github.com/siegfried/evil_utils"
  gem.license = "MIT"
  gem.summary = %Q{Evil utils for Rails}
  gem.description = %Q{Controller generators with responders and shoulda-matchers}
  gem.email = "zhiqiang.lei@gmail.com"
  gem.authors = ["Zhi-Qiang Lei"]
  # dependencies defined in Gemfile
  gem.add_dependency 'rails', '>= 4.0.0'
  gem.add_dependency 'shoulda-matchers', '>= 2.5.0'
  gem.add_dependency 'responders', '>= 1.0.0'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['test'].execute
end

task :default => :test

require 'yard'
YARD::Rake::YardocTask.new
