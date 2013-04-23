module MrVersion

  class Number

    attr_reader :value

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
      self.value = to_i + 1
      version && version.number
      self.value
    end

    def decrement
      self.value = to_i - 1
      self.value = 0 if self.value < 0
      version && version.number
      self.value
    end

    protected

    def value=(val)
      @value = val
    end

    def value
      @value ||= 0
    end

    def version
      @version
    end

  end

end
