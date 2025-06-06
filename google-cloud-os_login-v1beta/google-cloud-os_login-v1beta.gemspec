# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/os_login/v1beta/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-os_login-v1beta"
  gem.version       = Google::Cloud::OsLogin::V1beta::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Use OS Login to manage SSH access to your instances using IAM without having to create and manage individual SSH keys. OS Login maintains a consistent Linux user identity across VM instances and is the recommended way to manage many users across multiple instances or projects. Note that google-cloud-os_login-v1beta is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-os_login instead. See the readme for more details."
  gem.summary       = "You can use OS Login to manage access to your VM instances using IAM roles."
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "gapic-common", ">= 0.25.0", "< 2.a"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
end
