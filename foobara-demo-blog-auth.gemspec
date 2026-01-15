require_relative "version"

Gem::Specification.new do |spec|
  spec.name = "foobara-demo-blog-auth"
  spec.version = FoobaraDemo::BlogAuth::VERSION
  spec.authors = ["Miles Georgi"]
  spec.email = ["azimux@gmail.com"]

  spec.summary = "Auth commands and concerns for demo blog project"
  spec.homepage = "https://github.com/foobara-demo/blog-auth"
  spec.license = "MPL-2.0"
  spec.required_ruby_version = FoobaraDemo::BlogAuth::MINIMUM_RUBY_VERSION

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir[
    "lib/**/*",
    "src/**/*",
    "LICENSE*.txt",
    "README.md",
    "CHANGELOG.md"
  ]

  spec.add_dependency "foobara", ">= 0.0.136", "< 2.0.0"
  spec.add_dependency "foobara-auth", "< 2.0.0"
  spec.add_dependency "foobara-demo-blog", "< 2.0.0"

  spec.require_paths = ["lib"]
  spec.metadata["rubygems_mfa_required"] = "true"
end
