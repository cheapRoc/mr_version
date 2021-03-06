module MrVersion

  class Version < String

    FORMAT   = /^(?<major>[0-9]+)\.(?<minor>[0-9]+)\.(?<patch>[0-9]+)$/
    TEMPLATE = "%s.%s.%s"

    attr_accessor :append, :prepend, :template, :format, :parts

    def initialize(__version=nil)
      case __version
      # when Pathname, File
      #   @__version = YAML.parse(__version.read)
      when String
        @__version = __version
      else
        @__version = '0.0.0'
      end

      super parse.number
    end

    def number
      replace template % numbers
    end

    def to_s
      [prepend, template % numbers, append].delete_if(&:empty?).join ' '
    end
    alias :info :to_s

    def append
      @append ||= ''
    end

    def prepend
      @prepend ||= ''
    end

    def template
      @template ||= TEMPLATE
    end

    def format
      @format ||= FORMAT
    end

    def numbers
      @numbers ||= format_parts.map { |part| send part }
    end

    def format_parts
      format.names.map(&:to_sym)
    end

    def template=(template)
      @template = template
    end

    def format=(format)
      parse.format if @format = format
    end

    def parse
      parse_parts.format.match(__version) do |match|
        match.names.each do |name|
          instance_variable_set "@#{name}", Number.new(match[name], self)
        end
      end

      self
    end

    protected

    def __version
      @__version
    end

    def parse_parts
      return self unless parts != format_parts

      if parts
        parts.each do |part|
          instance_variable_set("@#{part}", nil)
          undef part
        end
      end

      (parts = format_parts).each do |part|
        self.class.send :define_method, part do
          instance_variable_get("@#{part}") ||
            instance_variable_set("@#{part}", Number.new(0, self))
        end

        self.class.send :define_method, "#{part}=" do |number|
          instance_variable_set("@#{part}", Number.new(number, self))
        end
      end

      self
    end
  end
end
