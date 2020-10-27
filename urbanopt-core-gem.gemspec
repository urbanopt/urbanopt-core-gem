
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
  spec.required_ruby_version = '~> 2.5.0'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.7'

  spec.add_dependency 'openstudio-extension', '~> 0.3.1'
end
