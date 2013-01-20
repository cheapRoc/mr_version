begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

begin
  require 'bundler'
  Bundler::GemHelper.install_tasks
rescue LoadError
  abort '### Bundler not installed ###'
end

task default: :spec
task 'gem:release' => :spec

Bones {
  name     'mr_version'
  authors  'Justin Reagor'
  email    'cheapRoc@gmail.com'
  url      'http://github.com/cheapRoc/mr_version'
}

Rake::TestTask.new :spec do |test|
  test.libs << 'test'
  test.test_files = FileList["spec/**/*_spec.rb"]
  test.verbose = true
end
