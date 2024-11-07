source 'http://rubygems.org'

# Specify your gem's dependencies in urbanopt-geojson-gem.gemspec
gemspec

# Local gems are useful when developing and integrating the various dependencies.
# To favor the use of local gems, set the following environment variable:
#   Mac: export FAVOR_LOCAL_GEMS=1
#   Windows: set FAVOR_LOCAL_GEMS=1
# Note that if allow_local is true, but the gem is not found locally, then it will
# checkout the latest version (develop) from github.
allow_local = ENV['FAVOR_LOCAL_GEMS']

# 2.9.1 breaks test_with_openstudio, for more information: https://github.com/NREL/OpenStudio/issues/5203
# pin this dependency to avoid unicode_normalize error
gem 'addressable', '2.8.1' # openstudio:test_with_openstudio
# pin this dependency to avoid using racc dependency (which has native extensions)
# gem 'parser', '3.2.2.2'
gem 'openstudio-extension', github: 'NREL/openstudio-extension-gem', branch: 'wenyi/patch'
# if allow_local && File.exist?('../OpenStudio-extension-gem')
#   gem 'openstudio-extension', path: '../OpenStudio-extension-gem'
# elsif allow_local
#   gem 'openstudio-extension', github: 'NREL/OpenStudio-extension-gem', branch: 'develop'
# end
