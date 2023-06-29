# *********************************************************************************
# URBANopt™, Copyright © Alliance for Sustainable Energy, LLC.
# See also https://github.com/urbanopt/urbanopt-core-gem/blob/develop/LICENSE.md
# *********************************************************************************

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

# Load in the rake tasks from the base extension gem
require 'openstudio/extension/rake_task'
require 'urbanopt/core'
rake_task = OpenStudio::Extension::RakeTask.new
rake_task.set_extension_class(URBANopt::Core::Extension, 'urbanopt/urbanopt-core-gem')

require 'rubocop/rake_task'
RuboCop::RakeTask.new

task default: :spec
