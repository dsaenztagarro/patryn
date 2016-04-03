require 'bundler/gem_tasks'
require 'rake/testtask'

require 'rubocop/rake_task'
require 'reek/rake/task'
require 'cane/rake_task'

namespace :quality do
  desc 'Run rubocop'
  RuboCop::RakeTask.new(:rubocop) do |task|
    task.patterns = ['lib/**/*.rb']
    # only show the files with failures
    task.formatters = ['progress']
    # don't abort rake on failure
    task.fail_on_error = true
  end

  desc 'Run reek to report code smells'
  Reek::Rake::Task.new do |t|
    t.fail_on_error = true
    t.verbose = false
  end

  desc 'Run cane to check quality metrics'
  Cane::RakeTask.new(:cane) do |cane|
    cane.abc_max = 10
    cane.no_style = true
  end

  task all: [:rubocop, :reek, :cane]
end

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

task default: :spec
