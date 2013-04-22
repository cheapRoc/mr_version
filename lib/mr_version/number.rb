module MrVersion

  class Number

    attr_reader :value

    attr_accessor :version

    def initialize(value=nil, version=nil)
      @value, @version = value.to_i, version
    end

    def ==(value)
      to_i == value
    end

    def to_i
      value.to_i
    end

    def to_s
      value.to_s
    end

    def increment
      value = to_i + 1
      version && version.parse
      value
    end

    def decrement
      value = to_i - 1
      value = 0 if value < 0
      version && version.parse
      value
    end

    protected

    def value
      @value ||= 0
    end

  end

end
