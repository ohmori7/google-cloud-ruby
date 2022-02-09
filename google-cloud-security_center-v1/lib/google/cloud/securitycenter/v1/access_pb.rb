# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/access.proto

require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1/access.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1.Access" do
      optional :principal_email, :string, 1
      optional :caller_ip, :string, 2
      optional :caller_ip_geo, :message, 3, "google.cloud.securitycenter.v1.Geolocation"
      optional :user_agent_family, :string, 4
      optional :service_name, :string, 5
      optional :method_name, :string, 6
    end
    add_message "google.cloud.securitycenter.v1.Geolocation" do
      optional :region_code, :string, 1
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1
        Access = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Access").msgclass
        Geolocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Geolocation").msgclass
      end
    end
  end
end
