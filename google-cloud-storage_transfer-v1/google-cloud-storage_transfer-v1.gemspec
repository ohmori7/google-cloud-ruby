# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/storage_transfer/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-storage_transfer-v1"
  gem.version       = Google::Cloud::StorageTransfer::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Storage Transfer Service allows you to quickly import online data into Cloud Storage. You can also set up a repeating schedule for transferring data, as well as transfer data within Cloud Storage, from one bucket to another. Note that google-cloud-storage_transfer-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-storage_transfer instead. See the readme for more details."
  gem.summary       = "Transfers data from external data sources to a Google Cloud Storage bucket or between Google Cloud Storage buckets."
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
