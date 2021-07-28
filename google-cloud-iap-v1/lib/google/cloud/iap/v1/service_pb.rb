# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/iap/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/client_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/iap/v1/service.proto", :syntax => :proto3) do
    add_message "google.cloud.iap.v1.GetIapSettingsRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.UpdateIapSettingsRequest" do
      optional :iap_settings, :message, 1, "google.cloud.iap.v1.IapSettings"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.iap.v1.IapSettings" do
      optional :name, :string, 1
      optional :access_settings, :message, 5, "google.cloud.iap.v1.AccessSettings"
      optional :application_settings, :message, 6, "google.cloud.iap.v1.ApplicationSettings"
    end
    add_message "google.cloud.iap.v1.AccessSettings" do
      optional :gcip_settings, :message, 1, "google.cloud.iap.v1.GcipSettings"
      optional :cors_settings, :message, 2, "google.cloud.iap.v1.CorsSettings"
      optional :oauth_settings, :message, 3, "google.cloud.iap.v1.OAuthSettings"
    end
    add_message "google.cloud.iap.v1.GcipSettings" do
      repeated :tenant_ids, :string, 1
      optional :login_page_uri, :message, 2, "google.protobuf.StringValue"
    end
    add_message "google.cloud.iap.v1.CorsSettings" do
      optional :allow_http_options, :message, 1, "google.protobuf.BoolValue"
    end
    add_message "google.cloud.iap.v1.OAuthSettings" do
      optional :login_hint, :message, 2, "google.protobuf.StringValue"
    end
    add_message "google.cloud.iap.v1.ApplicationSettings" do
      optional :csm_settings, :message, 1, "google.cloud.iap.v1.CsmSettings"
      optional :access_denied_page_settings, :message, 2, "google.cloud.iap.v1.AccessDeniedPageSettings"
      optional :cookie_domain, :message, 3, "google.protobuf.StringValue"
    end
    add_message "google.cloud.iap.v1.CsmSettings" do
      optional :rctoken_aud, :message, 1, "google.protobuf.StringValue"
    end
    add_message "google.cloud.iap.v1.AccessDeniedPageSettings" do
      optional :access_denied_page_uri, :message, 1, "google.protobuf.StringValue"
      optional :generate_troubleshooting_uri, :message, 2, "google.protobuf.BoolValue"
    end
    add_message "google.cloud.iap.v1.ListBrandsRequest" do
      optional :parent, :string, 1
    end
    add_message "google.cloud.iap.v1.ListBrandsResponse" do
      repeated :brands, :message, 1, "google.cloud.iap.v1.Brand"
    end
    add_message "google.cloud.iap.v1.CreateBrandRequest" do
      optional :parent, :string, 1
      optional :brand, :message, 2, "google.cloud.iap.v1.Brand"
    end
    add_message "google.cloud.iap.v1.GetBrandRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.ListIdentityAwareProxyClientsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.iap.v1.ListIdentityAwareProxyClientsResponse" do
      repeated :identity_aware_proxy_clients, :message, 1, "google.cloud.iap.v1.IdentityAwareProxyClient"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.iap.v1.CreateIdentityAwareProxyClientRequest" do
      optional :parent, :string, 1
      optional :identity_aware_proxy_client, :message, 2, "google.cloud.iap.v1.IdentityAwareProxyClient"
    end
    add_message "google.cloud.iap.v1.GetIdentityAwareProxyClientRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.ResetIdentityAwareProxyClientSecretRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.DeleteIdentityAwareProxyClientRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.iap.v1.Brand" do
      optional :name, :string, 1
      optional :support_email, :string, 2
      optional :application_title, :string, 3
      optional :org_internal_only, :bool, 4
    end
    add_message "google.cloud.iap.v1.IdentityAwareProxyClient" do
      optional :name, :string, 1
      optional :secret, :string, 2
      optional :display_name, :string, 3
    end
  end
end

module Google
  module Cloud
    module Iap
      module V1
        GetIapSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetIapSettingsRequest").msgclass
        UpdateIapSettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.UpdateIapSettingsRequest").msgclass
        IapSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.IapSettings").msgclass
        AccessSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AccessSettings").msgclass
        GcipSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GcipSettings").msgclass
        CorsSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CorsSettings").msgclass
        OAuthSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.OAuthSettings").msgclass
        ApplicationSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ApplicationSettings").msgclass
        CsmSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CsmSettings").msgclass
        AccessDeniedPageSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.AccessDeniedPageSettings").msgclass
        ListBrandsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListBrandsRequest").msgclass
        ListBrandsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListBrandsResponse").msgclass
        CreateBrandRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CreateBrandRequest").msgclass
        GetBrandRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetBrandRequest").msgclass
        ListIdentityAwareProxyClientsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListIdentityAwareProxyClientsRequest").msgclass
        ListIdentityAwareProxyClientsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ListIdentityAwareProxyClientsResponse").msgclass
        CreateIdentityAwareProxyClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.CreateIdentityAwareProxyClientRequest").msgclass
        GetIdentityAwareProxyClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.GetIdentityAwareProxyClientRequest").msgclass
        ResetIdentityAwareProxyClientSecretRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.ResetIdentityAwareProxyClientSecretRequest").msgclass
        DeleteIdentityAwareProxyClientRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.DeleteIdentityAwareProxyClientRequest").msgclass
        Brand = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.Brand").msgclass
        IdentityAwareProxyClient = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.iap.v1.IdentityAwareProxyClient").msgclass
      end
    end
  end
end
