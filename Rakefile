# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'
require 'rake/testtask'
Rails.application.load_tasks
# require 'simplecov'


desc 'Try again.'
task "db:yolo" => [:"db:drop", :"db:create", :"db:migrate"] do
  puts "YOLO"
end

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.pattern = 'test/_test*.rb'
  t.verbose = false # or true
end

desc "Run Tests"
task :default => :test

desc 'Run all tests by default'
task :default => %w(test test:isolated)
