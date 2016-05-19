# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'benchmarksql/version'

Gem::Specification.new do |spec|
  spec.name          = "benchmarksql"
  spec.version       = Benchmarksql::VERSION
  spec.authors       = ["vtt"]
  spec.email         = ["65267@google.com"]

  spec.summary       = "automate benchmark sql server test"
  spec.description   = "automate benchmark sql server test"
  spec.homepage      = "www.vttproject.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
