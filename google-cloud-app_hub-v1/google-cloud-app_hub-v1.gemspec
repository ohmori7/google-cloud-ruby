# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/app_hub/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-app_hub-v1"
  gem.version       = Google::Cloud::AppHub::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "google-cloud-app_hub-v1 is the official client library for the App Hub V1 API. Note that google-cloud-app_hub-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-app_hub instead. See the readme for more details."
  gem.summary       = "API Client library for the App Hub V1 API"
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
  gem.add_dependency "google-cloud-location", ">= 0.7", "< 2.a"
  gem.add_dependency "google-iam-v1", ">= 0.7", "< 2.a"
end
