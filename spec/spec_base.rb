require 'simple_cov'

SimpleCov.start do
  add_group 'Libraries', 'lib'
  add_group 'Specs', 'spec'
end

require 'pathname'
$root = Pathname(__FILE__).dirname.expand_path

$:.unshift $root.to_s
$:.unshift $root.parent.join('lib').to_s

require 'bacon'
require 'facon'
require 'mr_version'

module SpecHelpers
end

Bacon::Context.send :include, SpecHelpers

puts Bacon.summary_on_exit
