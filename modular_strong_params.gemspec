# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'modular_strong_params/version'

Gem::Specification.new do |spec|
  spec.name          = 'modular_strong_params'
  spec.version       = ModularStrongParams::VERSION
  spec.authors       = ['Chris Grigg', 'Rebecca Eakins']
  spec.email         = ['chris@subvertallmedia.com', 'rebecca.a.eakins@gmail.com']

  spec.summary       = 'Strong params... in a module!'
  spec.description   = %q{Rails 4.2\'s Strong Parameters in modular form, usable in Sinatra.
                       The listed authors are only responsible for code extraction, full credit and respect
                       goes to those talented individuals who actually wrote the code!}

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency('rack')

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'activesupport', '~> 4.2'
  spec.add_dependency 'actionpack', '~> 4.2'
  spec.add_dependency 'activemodel', '~> 4.2'
  spec.add_dependency 'railties', '~> 4.2'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'test-unit'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop', '~> 0.29.1'
end
