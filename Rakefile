require 'bundler/setup'
require 'rspec/core/rake_task'

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
  RSpec::Core::RakeTask.new(:unit) do |opt|
    opt.pattern = Dir['spec/unit/**/*_spec.rb'].sort
  end

  task :acceptance do
    #TODO: Make this work
  end

end