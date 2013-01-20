require 'pathname'
$:.unshift Pathname(__FILE__).dirname.expand_path.to_s
require 'spec_base.rb'

describe MrVersion, 'doing stuff' do
  it 'should have a version number of its own' do
    MrVersion::VERSION.should.match /[0-9]+\.[0-9]+\.[0-9]+/
  end
end
