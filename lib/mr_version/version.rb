
module MrVersion

  class Number < String

    attr_reader :number

    def initialize(__number=nil)
      @__number = __number.to_i
      super self.to_s
    end

    def to_s
      __number.to_s
    end

    protected

    def __number
      @__number ||= 0
    end

  end

  class Version < String

    DEFAULT_FORMAT = /^(?<major>[0-9]+)\.(?<minor>[0-9]+)\.(?<patch>[0-9]+)$/

    def initialize(__version=nil)
      case __version
      when String
        @__version = __version
        parse_string
      end

      super self
    end

    def major
      @major ||= Number.new
    end

    def minor
      @minor ||= Number.new
    end

    def patch
      @patch ||= Number.new
    end

    def format
      @format ||= DEFAULT_FORMAT
    end

    protected

    def __version
      @__version
    end

    def parse_string
      format.match(__version) do |match|
        match.names.each do |name|
          instance_variable_set "@#{name}", Number.new(match[name])
        end
      end
    end

  end

end
