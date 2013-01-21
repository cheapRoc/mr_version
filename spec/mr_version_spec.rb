require 'pathname'
$:.unshift Pathname(__FILE__).dirname.expand_path.to_s
require 'spec_base.rb'

describe MrVersion do

  it 'should have a version number' do
    MrVersion::VERSION.should.match /[0-9]+\.[0-9]+\.[0-9]+/
  end

  describe 'instances' do

    before do
      @version = MrVersion::Version.new '1.2.3'
    end

    it 'should have a major number' do
      @version.major.should.equal MrVersion::Number.new(1)
    end

    it 'should have a minor number' do
      @version.minor.should.equal MrVersion::Number.new(2)
    end

    it 'should have a patch number' do
      @version.patch.should.equal MrVersion::Number.new(3)
    end
    
  end

end

