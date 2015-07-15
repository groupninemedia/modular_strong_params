# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'modular_strong_params/version'

Gem::Specification.new do |spec|
  spec.name          = "modular_strong_params"
  spec.version       = ModularStrongParams::VERSION
  spec.authors       = ["Chris Grigg", "Rebecca Eakins"]
  spec.email         = ["chris@subvertallmedia.com", "rebecca.a.eakins@gmail.com"]

  spec.summary       = %q{Strong params... in a module!}

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "activesupport", "~> 4.1"
  spec.add_dependency "actionpack", "~> 4.1"
  spec.add_dependency "activemodel", "~> 4.1"
  spec.add_dependency "railties", "~> 4.1"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "test-unit"
end
