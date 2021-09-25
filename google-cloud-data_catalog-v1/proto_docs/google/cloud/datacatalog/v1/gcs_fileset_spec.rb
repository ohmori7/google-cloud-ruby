# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module DataCatalog
      module V1
        # Describes a Cloud Storage fileset entry.
        # @!attribute [rw] file_patterns
        #   @return [::Array<::String>]
        #     Required. Patterns to identify a set of files in Google Cloud Storage.
        #
        #     For more information, see [Wildcard Names]
        #     (https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames).
        #
        #     Note: Currently, bucket wildcards are not supported.
        #
        #     Examples of valid `file_patterns`:
        #
        #      * `gs://bucket_name/dir/*`: matches all files in `bucket_name/dir`
        #                                  directory
        #      * `gs://bucket_name/dir/**`: matches all files in `bucket_name/dir`
        #                                   and all subdirectories
        #      * `gs://bucket_name/file*`: matches files prefixed by `file` in
        #                                  `bucket_name`
        #      * `gs://bucket_name/??.txt`: matches files with two characters followed by
        #                                   `.txt` in `bucket_name`
        #      * `gs://bucket_name/[aeiou].txt`: matches files that contain a single
        #                                        vowel character followed by `.txt` in
        #                                        `bucket_name`
        #      * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ...
        #                                      or `m` followed by `.txt` in `bucket_name`
        #      * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match
        #                                  the `a/*/b` pattern, such as `a/c/b`, `a/d/b`
        #      * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt`
        #
        #     You can combine wildcards to match complex sets of files, for example:
        #
        #     `gs://bucket_name/[a-m]??.j*g`
        # @!attribute [r] sample_gcs_file_specs
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::GcsFileSpec>]
        #     Output only. Sample files contained in this fileset, not all files
        #     contained in this fileset are represented here.
        class GcsFilesetSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Specification of a single file in Cloud Storage.
        # @!attribute [rw] file_path
        #   @return [::String]
        #     Required. Full file path. Example: `gs://bucket_name/a/b.txt`.
        # @!attribute [r] gcs_timestamps
        #   @return [::Google::Cloud::DataCatalog::V1::SystemTimestamps]
        #     Output only. Creation, modification, and expiration timestamps of a Cloud Storage file.
        # @!attribute [r] size_bytes
        #   @return [::Integer]
        #     Output only. File size in bytes.
        class GcsFileSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
