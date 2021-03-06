# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fixx/version"

Gem::Specification.new do |spec|
  spec.name          = "fixx"
  spec.version       = Fixx::VERSION
  spec.authors       = ["Corbin Fox"]
  spec.email         = ["corbin.fox@gmail.com"]

  spec.summary       = %q{Fixx helps you grep through your icky fix message logs.}
  spec.description   = %q{Make delimiters printable, filter by message type, extract fields and more!}
  spec.homepage      = "https://github.com/cfox/fixx"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = "fixx"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
