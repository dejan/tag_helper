require 'rake/testtask'
require 'rubocop/rake_task'

desc 'Default: run tests'
task default: :test

desc 'Test TagHelper'
Rake::TestTask.new(test: :rubocop) do |t|
  t.pattern = 'test/**/*_test.rb'
end

RuboCop::RakeTask.new
