# frozen_string_literal: true

require_relative "lib/faster_sum/version"

Gem::Specification.new do |spec|
  spec.name = "faster_sum"
  spec.version = FasterSum::VERSION
  spec.authors = ["Paul Scarrone"]
  spec.email = ["paul@scarrone.co"]

  spec.summary = "Write a short summary, because RubyGems requires one."
  spec.description = "Write a longer description or delete this line."
  spec.homepage = "https://scarrone.dev"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = spec.homepage

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = ['lib/faster_sum.rb', 'libtest_lib.so', 'test_lib.h']
  spec.bindir = "exe"
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_dependency "ffi", "~> 1.15"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
