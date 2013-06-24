@root_dir = File.expand_path(File.join(File.dirname(__FILE__), '../'))
$: << File.join(@root_dir, 'src')

require 'rspec'
require 'rack/test'
require 'app'

set :environment, :test
