# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/bigquery/connection/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-bigquery-connection-v1"
  gem.version       = Google::Cloud::Bigquery::Connection::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "The BigQuery Connection API allows users to manage BigQuery connections to external data sources. Note that google-cloud-bigquery-connection-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-bigquery-connection instead. See the readme for more details."
  gem.summary       = "Allows users to manage BigQuery connections to external data sources."
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
  gem.add_dependency "grpc-google-iam-v1", "~> 1.1"
end
