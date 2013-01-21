require 'pathname'

module MrVersion

  LIBPATH = Pathname(__FILE__).dirname.expand_path
  PATH = LIBPATH.parent
  # VERSION = new PATH.join('version.yml').read.strip
  VERSION = '0.0.1'

  require LIBPATH.join('mr_version', 'version')

end
