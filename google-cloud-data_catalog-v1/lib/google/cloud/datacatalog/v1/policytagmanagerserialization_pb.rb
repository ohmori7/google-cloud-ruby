# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1/policytagmanagerserialization.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/datacatalog/v1/policytagmanager_pb'


descriptor_data = "\n?google/cloud/datacatalog/v1/policytagmanagerserialization.proto\x12\x1bgoogle.cloud.datacatalog.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x32google/cloud/datacatalog/v1/policytagmanager.proto\"\xdd\x01\n\x12SerializedTaxonomy\x12\x19\n\x0c\x64isplay_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x45\n\x0bpolicy_tags\x18\x03 \x03(\x0b\x32\x30.google.cloud.datacatalog.v1.SerializedPolicyTag\x12P\n\x16\x61\x63tivated_policy_types\x18\x04 \x03(\x0e\x32\x30.google.cloud.datacatalog.v1.Taxonomy.PolicyType\"\xa6\x01\n\x13SerializedPolicyTag\x12\x12\n\npolicy_tag\x18\x01 \x01(\t\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12K\n\x11\x63hild_policy_tags\x18\x04 \x03(\x0b\x32\x30.google.cloud.datacatalog.v1.SerializedPolicyTag\"\xa6\x01\n\x16ReplaceTaxonomyRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#datacatalog.googleapis.com/Taxonomy\x12Q\n\x13serialized_taxonomy\x18\x02 \x01(\x0b\x32/.google.cloud.datacatalog.v1.SerializedTaxonomyB\x03\xe0\x41\x02\"\xf7\x01\n\x17ImportTaxonomiesRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#datacatalog.googleapis.com/Taxonomy\x12\x42\n\rinline_source\x18\x02 \x01(\x0b\x32).google.cloud.datacatalog.v1.InlineSourceH\x00\x12Q\n\x15\x63ross_regional_source\x18\x03 \x01(\x0b\x32\x30.google.cloud.datacatalog.v1.CrossRegionalSourceH\x00\x42\x08\n\x06source\"X\n\x0cInlineSource\x12H\n\ntaxonomies\x18\x01 \x03(\x0b\x32/.google.cloud.datacatalog.v1.SerializedTaxonomyB\x03\xe0\x41\x02\"T\n\x13\x43rossRegionalSource\x12=\n\x08taxonomy\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#datacatalog.googleapis.com/Taxonomy\"U\n\x18ImportTaxonomiesResponse\x12\x39\n\ntaxonomies\x18\x01 \x03(\x0b\x32%.google.cloud.datacatalog.v1.Taxonomy\"\xc7\x01\n\x17\x45xportTaxonomiesRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#datacatalog.googleapis.com/Taxonomy\x12?\n\ntaxonomies\x18\x02 \x03(\tB+\xe0\x41\x02\xfa\x41%\n#datacatalog.googleapis.com/Taxonomy\x12\x1f\n\x15serialized_taxonomies\x18\x03 \x01(\x08H\x00\x42\r\n\x0b\x64\x65stination\"_\n\x18\x45xportTaxonomiesResponse\x12\x43\n\ntaxonomies\x18\x01 \x03(\x0b\x32/.google.cloud.datacatalog.v1.SerializedTaxonomy2\xa7\x05\n\x1dPolicyTagManagerSerialization\x12\xb0\x01\n\x0fReplaceTaxonomy\x12\x33.google.cloud.datacatalog.v1.ReplaceTaxonomyRequest\x1a%.google.cloud.datacatalog.v1.Taxonomy\"A\x82\xd3\xe4\x93\x02;\"6/v1/{name=projects/*/locations/*/taxonomies/*}:replace:\x01*\x12\xc1\x01\n\x10ImportTaxonomies\x12\x34.google.cloud.datacatalog.v1.ImportTaxonomiesRequest\x1a\x35.google.cloud.datacatalog.v1.ImportTaxonomiesResponse\"@\x82\xd3\xe4\x93\x02:\"5/v1/{parent=projects/*/locations/*}/taxonomies:import:\x01*\x12\xbe\x01\n\x10\x45xportTaxonomies\x12\x34.google.cloud.datacatalog.v1.ExportTaxonomiesRequest\x1a\x35.google.cloud.datacatalog.v1.ExportTaxonomiesResponse\"=\x82\xd3\xe4\x93\x02\x37\x12\x35/v1/{parent=projects/*/locations/*}/taxonomies:export\x1aN\xca\x41\x1a\x64\x61tacatalog.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xe7\x01\n\x1f\x63om.google.cloud.datacatalog.v1B\"PolicyTagManagerSerializationProtoP\x01ZAcloud.google.com/go/datacatalog/apiv1/datacatalogpb;datacatalogpb\xaa\x02\x1bGoogle.Cloud.DataCatalog.V1\xca\x02\x1bGoogle\\Cloud\\DataCatalog\\V1\xea\x02\x1eGoogle::Cloud::DataCatalog::V1b\x06proto3"

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
    ["google.cloud.datacatalog.v1.Taxonomy", "google/cloud/datacatalog/v1/policytagmanager.proto"],
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
    module DataCatalog
      module V1
        SerializedTaxonomy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.SerializedTaxonomy").msgclass
        SerializedPolicyTag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.SerializedPolicyTag").msgclass
        ReplaceTaxonomyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ReplaceTaxonomyRequest").msgclass
        ImportTaxonomiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ImportTaxonomiesRequest").msgclass
        InlineSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.InlineSource").msgclass
        CrossRegionalSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.CrossRegionalSource").msgclass
        ImportTaxonomiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ImportTaxonomiesResponse").msgclass
        ExportTaxonomiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ExportTaxonomiesRequest").msgclass
        ExportTaxonomiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ExportTaxonomiesResponse").msgclass
      end
    end
  end
end
