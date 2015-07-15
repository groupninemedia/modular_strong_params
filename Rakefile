require "bundler/gem_tasks"
require 'rake/testtask'

test_files = Dir.glob('test/**/*_test.rb')

desc "Default Task"
task :default => :test

# Run the unit tests
Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = test_files

  t.warning = true
  t.verbose = true
  t.ruby_opts = ["--dev"] if defined?(JRUBY_VERSION)
end

namespace :test do
  task :isolated do
    test_files.all? do |file|
      sh(Gem.ruby, '-w', '-Ilib:test', file)
    end or raise "Failures"
  end
end

