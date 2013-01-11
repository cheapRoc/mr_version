require 'pathname'

module MrVersion

  LIBPATH = Pathname(__FILE__).dirname.expand_path
  PATH = LIBPATH.parent
  VERSION = PATH.join('version.txt').read.strip

end
