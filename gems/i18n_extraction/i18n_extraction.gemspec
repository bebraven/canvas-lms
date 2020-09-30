# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = "i18n_extraction"
  spec.version = '0.0.1'
  spec.authors = ["Raphael Weiner"]
  spec.email = ["rweiner@pivotallabs.com"]
  spec.summary = %q{i18n extraction for Instructure}

  spec.files = Dir.glob("{lib,spec}/**/*") + %w(Rakefile test.sh)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "sexp_processor", "~> 4.9"
  spec.add_dependency "ruby_parser", "~> 3.14.0"
  spec.add_dependency "activesupport", ">= 3.2", "< 4.3"
  spec.add_dependency "i18nliner", "0.0.14"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "2.99.0"
end
