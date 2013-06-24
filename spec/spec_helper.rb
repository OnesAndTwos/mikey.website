@this_dir = File.expand_path(File.join(File.dirname(__FILE__)))
@root_dir = File.expand_path(File.join(File.dirname(__FILE__), '../'))

$: << File.join(@root_dir, 'src')

$: << File.join(@this_dir, 'acceptance')
$: << File.join(@this_dir, 'unit')

require 'unit_helper'
require 'acceptance_helper'
