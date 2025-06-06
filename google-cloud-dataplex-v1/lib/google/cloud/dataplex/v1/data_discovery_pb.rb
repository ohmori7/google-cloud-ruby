# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataplex/v1/data_discovery.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n-google/cloud/dataplex/v1/data_discovery.proto\x12\x18google.cloud.dataplex.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\x85\x08\n\x11\x44\x61taDiscoverySpec\x12m\n\x1a\x62igquery_publishing_config\x18\x01 \x01(\x0b\x32\x44.google.cloud.dataplex.v1.DataDiscoverySpec.BigQueryPublishingConfigB\x03\xe0\x41\x01\x12S\n\x0estorage_config\x18\x64 \x01(\x0b\x32\x39.google.cloud.dataplex.v1.DataDiscoverySpec.StorageConfigH\x00\x1a\xa8\x02\n\x18\x42igQueryPublishingConfig\x12g\n\ntable_type\x18\x02 \x01(\x0e\x32N.google.cloud.dataplex.v1.DataDiscoverySpec.BigQueryPublishingConfig.TableTypeB\x03\xe0\x41\x01\x12H\n\nconnection\x18\x03 \x01(\tB4\xe0\x41\x01\xfa\x41.\n,bigqueryconnection.googleapis.com/Connection\x12\x15\n\x08location\x18\x04 \x01(\tB\x03\xe0\x41\x01\"B\n\tTableType\x12\x1a\n\x16TABLE_TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x45XTERNAL\x10\x01\x12\x0b\n\x07\x42IGLAKE\x10\x02\x1a\xed\x03\n\rStorageConfig\x12\x1d\n\x10include_patterns\x18\x01 \x03(\tB\x03\xe0\x41\x01\x12\x1d\n\x10\x65xclude_patterns\x18\x02 \x03(\tB\x03\xe0\x41\x01\x12^\n\x0b\x63sv_options\x18\x03 \x01(\x0b\x32\x44.google.cloud.dataplex.v1.DataDiscoverySpec.StorageConfig.CsvOptionsB\x03\xe0\x41\x01\x12`\n\x0cjson_options\x18\x04 \x01(\x0b\x32\x45.google.cloud.dataplex.v1.DataDiscoverySpec.StorageConfig.JsonOptionsB\x03\xe0\x41\x01\x1a\x8f\x01\n\nCsvOptions\x12\x18\n\x0bheader_rows\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\x12\x16\n\tdelimiter\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08\x65ncoding\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12$\n\x17type_inference_disabled\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\x12\x12\n\x05quote\x18\x05 \x01(\tB\x03\xe0\x41\x01\x1aJ\n\x0bJsonOptions\x12\x15\n\x08\x65ncoding\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12$\n\x17type_inference_disabled\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x42\x11\n\x0fresource_config\"\xb7\x04\n\x13\x44\x61taDiscoveryResult\x12\x62\n\x13\x62igquery_publishing\x18\x01 \x01(\x0b\x32@.google.cloud.dataplex.v1.DataDiscoveryResult.BigQueryPublishingB\x03\xe0\x41\x03\x12Z\n\x0fscan_statistics\x18\x02 \x01(\x0b\x32<.google.cloud.dataplex.v1.DataDiscoveryResult.ScanStatisticsB\x03\xe0\x41\x03\x1a\x65\n\x12\x42igQueryPublishing\x12\x38\n\x07\x64\x61taset\x18\x01 \x01(\tB\'\xe0\x41\x03\xfa\x41!\n\x1f\x62igquery.googleapis.com/Dataset\x12\x15\n\x08location\x18\x02 \x01(\tB\x03\xe0\x41\x03\x1a\xf8\x01\n\x0eScanStatistics\x12\x1a\n\x12scanned_file_count\x18\x01 \x01(\x05\x12\x1c\n\x14\x64\x61ta_processed_bytes\x18\x02 \x01(\x03\x12\x16\n\x0e\x66iles_excluded\x18\x03 \x01(\x05\x12\x16\n\x0etables_created\x18\x04 \x01(\x05\x12\x16\n\x0etables_deleted\x18\x05 \x01(\x05\x12\x16\n\x0etables_updated\x18\x06 \x01(\x05\x12\x18\n\x10\x66ilesets_created\x18\x07 \x01(\x05\x12\x18\n\x10\x66ilesets_deleted\x18\x08 \x01(\x05\x12\x18\n\x10\x66ilesets_updated\x18\t \x01(\x05\x42\xac\x02\n\x1c\x63om.google.cloud.dataplex.v1B\x12\x44\x61taDiscoveryProtoP\x01Z8cloud.google.com/go/dataplex/apiv1/dataplexpb;dataplexpb\xea\x41H\n\x1f\x62igquery.googleapis.com/Dataset\x12%projects/{project}/datasets/{dataset}\xea\x41p\n,bigqueryconnection.googleapis.com/Connection\x12@projects/{project}/locations/{location}/connections/{connection}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Dataplex
      module V1
        DataDiscoverySpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataDiscoverySpec").msgclass
        DataDiscoverySpec::BigQueryPublishingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataDiscoverySpec.BigQueryPublishingConfig").msgclass
        DataDiscoverySpec::BigQueryPublishingConfig::TableType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataDiscoverySpec.BigQueryPublishingConfig.TableType").enummodule
        DataDiscoverySpec::StorageConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataDiscoverySpec.StorageConfig").msgclass
        DataDiscoverySpec::StorageConfig::CsvOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataDiscoverySpec.StorageConfig.CsvOptions").msgclass
        DataDiscoverySpec::StorageConfig::JsonOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataDiscoverySpec.StorageConfig.JsonOptions").msgclass
        DataDiscoveryResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataDiscoveryResult").msgclass
        DataDiscoveryResult::BigQueryPublishing = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataDiscoveryResult.BigQueryPublishing").msgclass
        DataDiscoveryResult::ScanStatistics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataplex.v1.DataDiscoveryResult.ScanStatistics").msgclass
      end
    end
  end
end
