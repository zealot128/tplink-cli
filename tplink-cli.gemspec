lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tplink-cli/version'

Gem::Specification.new do |spec|
  spec.name          = "tplink-cli"
  spec.version       = TplinkCli::VERSION
  spec.authors       = ["Stefan Wienert"]
  spec.email         = ["stwienert@gmail.com"]

  spec.summary       = %q{cli-tools for tplink routers development}
  spec.description   = %q{cli-tools for tplink routers development}
  spec.homepage      = "https://github.com/zealot128/tplink-cli"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_dependency 'activesupport', '>= 3.2.0'
  # spec.add_dependency 'colored'
  spec.add_dependency 'thor'
  # spec.add_dependency 'hashie'
  # spec.add_dependency 'faraday'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency 'pry'
end
