require "bundler/gem_tasks"

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)
task :default => :spec

Dir.glob('lib/tasks/**/*.rake').each(&method(:import))
