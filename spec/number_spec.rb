require 'pathname'
$:.unshift Pathname(__FILE__).dirname.expand_path.to_s
require 'spec_base.rb'

describe MrVersion::Number do

  before do
    @number = MrVersion::Number.new 1
  end

  it 'is a kind of string' do
    @number.to_s.should.be.kind_of String
  end

  it 'is a kind of integer' do
    @number.to_i.should.be.kind_of Integer
  end

  it 'increments to "2"' do
    @number.increment.should.equal 2
  end

  it 'decrements to "1"' do
    @number = MrVersion::Number.new 2
    @number.decrement.should.equal 1
  end

  it 'decrements to "0" if already "0"' do
    @number = MrVersion::Number.new 0
    @number.decrement.should.be.zero
  end

end
