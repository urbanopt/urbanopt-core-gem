lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'urbanopt/core/version'

Gem::Specification.new do |spec|
  spec.name          = 'urbanopt-core'
  spec.version       = URBANopt::Core::VERSION
  spec.authors       = ['Dan Macumber', 'Nicholas Long']
  spec.email         = ['nicholas.long@nrel.gov']
  spec.summary       = 'URBANopt core library and measures'
  spec.description   = 'URBANopt core library and measures'
  spec.homepage      = 'https://github.com/urbanopt'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  # We support exactly Ruby v3.2.2 because os-extension requires bundler==2.4.10 and that requires Ruby 3.2.2: https://stdgems.org/bundler/
  # It would be nice to be able to use newer patches of Ruby 3.2, which would require os-extension to relax its dependency on bundler.
  spec.required_ruby_version = '3.2.2'

  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rubocop', '1.50'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'simplecov', '0.22.0'
  spec.add_development_dependency 'simplecov-lcov', '0.8.0'

  spec.add_dependency 'openstudio-extension', '~> 0.9.4'
end
