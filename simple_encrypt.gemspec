# frozen_string_literal: true

require_relative "lib/simple_encrypt/version"

Gem::Specification.new do |spec|
  spec.name          = "simple_encrypt"
  spec.version       = SimpleEncrypt::VERSION
  spec.authors       = ["hzy"]
  spec.email         = ["18670314023@163.com"]

  spec.summary       = "simple encrypt for id"
  spec.description   = "simple encrypt for id"
  spec.homepage      = "https://github.com/jiedianshuzhi"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://github.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jiedianshuzhi/simple_encrypt"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
