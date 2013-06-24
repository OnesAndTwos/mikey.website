require 'bundler/setup'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'


task :test => ['test:units', 'test:features']

namespace :run do

  desc 'Run application using shotgun on port "8282"'
  task :shotgun do
    sh 'shotgun --port=8282 config.ru'
  end

  desc 'Run application using rackup on port "8283"'
  task :rackup do
    sh 'rackup -p 8283 config.ru'
  end

end

namespace :test do

  desc 'Run unit tests'
  RSpec::Core::RakeTask.new(:units) do |t|
    t.pattern = Dir['spec/**/*_spec.rb'].sort
  end

  Cucumber::Rake::Task.new(:features, desc = 'Run feature tests') do |t|
    t.cucumber_opts = 'features --format pretty'
  end

end