module MrVersion
  
  class Number

    attr_reader :value

    def initialize(value=nil)
      @value = value.to_i
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
    end

    def decrement
      value = to_i - 1
      value = 0 if value < 0
      value
    end

    protected

    def value
      @value ||= 0
    end

  end

end
