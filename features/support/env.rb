@root_dir = File.expand_path(File.join(File.dirname(__FILE__), '../../'))
$: << File.join(@root_dir, 'src')

require 'cucumber'
require 'capybara/cucumber'
require 'app'

require_relative 'url_for'

Capybara.app = MikesWebsite

set :environment, :test