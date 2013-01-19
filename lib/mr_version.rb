require 'pathname'

class Version

  LIBPATH = Pathname(__FILE__).dirname.expand_path
  PATH = LIBPATH.parent
  # VERSION = new PATH.join('version.txt').read.strip
  VERSION = '0.0.1'

end
