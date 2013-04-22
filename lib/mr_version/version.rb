
module MrVersion

  class Version < String

    FORMAT   = /^(?<major>[0-9]+)\.(?<minor>[0-9]+)\.(?<patch>[0-9]+)$/
    TEMPLATE = "%s.%s.%s"

    attr_accessor :template, :format, :parts

    def initialize(__version=nil)
      @__version = __version || '0.0.0'
      super self.parse.to_s
    end

    def to_s
      template % __versions
    end

    def template
      @template ||= TEMPLATE
    end

    def format
      @format ||= FORMAT
    end

    def template=(template)
      @template = template
    end

    def format=(format)
      parse.format if @format = format
    end

    protected

    def __version
      @__version
    end

    def __versions
      format_parts.map { |part| send part }
    end

    def format_parts
      format.names.map(&:to_sym)
    end

    def parse_parts
      if parts && parts != format_parts
        parts.each { |part| undef part }
      end

      (parts = format_parts).each do |part|
        self.class.send :define_method, part do
          instance_variable_get("@#{part}") ||
            instance_variable_set("@#{part}", Number.new)
        end
      end

      self
    end

    def parse
      parse_parts.format.match(__version) do |match|
        match.names.each do |name|
          instance_variable_set "@#{name}", Number.new(match[name])
        end
      end

      self
    end
  end
end
