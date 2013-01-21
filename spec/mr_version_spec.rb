require 'pathname'
$:.unshift Pathname(__FILE__).dirname.expand_path.to_s
require 'spec_base.rb'

describe MrVersion do

  it 'has a library version' do
    MrVersion::VERSION.should.match /[0-9]+\.[0-9]+\.[0-9]+/
  end

  describe 'instantiated with "1.2.3"' do

    before do
      @version = MrVersion::Version.new '1.2.3'
    end

    it 'has a major number of "1"' do
      @version.major.should.equal MrVersion::Number.new(1)
    end

    it 'has a minor number of "2"' do
      @version.minor.should.equal MrVersion::Number.new(2)
    end

    it 'has a patch number of "3"' do
      @version.patch.should.equal MrVersion::Number.new(3)
    end
    
  end

end

