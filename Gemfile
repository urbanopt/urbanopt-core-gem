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

# pin this dependency to avoid unicode_normalize error in rake openstudio:test_with_openstudio
gem 'addressable', '2.8.1'
gem 'regexp_parser', '2.9.0'

# if allow_local && File.exist?('../OpenStudio-extension-gem')
#   gem 'openstudio-extension', path: '../OpenStudio-extension-gem'
# elsif allow_local
gem 'openstudio-extension', github: 'NREL/OpenStudio-extension-gem', branch: 'ruby3-conditional_bundler'
# end
