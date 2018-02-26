
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sergio_torres_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "sergio_torres_gem"
  spec.version       = SergioTorresGem::VERSION
  spec.authors       = ["Sophia-Sergio"]
  spec.email         = ["san.storres@gmail.com"]

  spec.summary       = %q{Mi primera gema}
  spec.description   = %q{Mi primera gema}
  spec.homepage      = "http://www.sergio-torres.cl"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
