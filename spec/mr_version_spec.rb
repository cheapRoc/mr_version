require 'pathname'
$:.unshift Pathname(__FILE__).dirname.expand_path.to_s
require 'spec_base.rb'

describe MrVersion do

  it 'has a library version' do
    MrVersion::VERSION.should.match /[0-9]+\.[0-9]+\.[0-9]+/
  end

end
