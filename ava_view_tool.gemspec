# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ava_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "ava_view_tool"
  spec.version       = AvaViewTool::VERSION
  spec.authors       = ["Christopher Choi"]
  spec.email         = ["cdddchris@gmail.com"]

  spec.summary       = %q{Gem to print copyright for personal application I use.}
  spec.description   = %q{Provides generated html data for Rails.}
  spec.homepage      = "https://github.com/cchoi12/ava_ruby_gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
