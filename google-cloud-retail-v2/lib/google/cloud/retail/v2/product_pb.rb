# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/product.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/common_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/retail/v2/product.proto", :syntax => :proto3) do
    add_message "google.cloud.retail.v2.Product" do
      optional :name, :string, 1
      optional :id, :string, 2
      optional :type, :enum, 3, "google.cloud.retail.v2.Product.Type"
      optional :primary_product_id, :string, 4
      repeated :collection_member_ids, :string, 5
      optional :gtin, :string, 6
      repeated :categories, :string, 7
      optional :title, :string, 8
      repeated :brands, :string, 9
      optional :description, :string, 10
      optional :language_code, :string, 11
      map :attributes, :string, :message, 12, "google.cloud.retail.v2.CustomAttribute"
      repeated :tags, :string, 13
      optional :price_info, :message, 14, "google.cloud.retail.v2.PriceInfo"
      optional :rating, :message, 15, "google.cloud.retail.v2.Rating"
      optional :available_time, :message, 18, "google.protobuf.Timestamp"
      optional :availability, :enum, 19, "google.cloud.retail.v2.Product.Availability"
      optional :available_quantity, :message, 20, "google.protobuf.Int32Value"
      repeated :fulfillment_info, :message, 21, "google.cloud.retail.v2.FulfillmentInfo"
      optional :uri, :string, 22
      repeated :images, :message, 23, "google.cloud.retail.v2.Image"
      optional :audience, :message, 24, "google.cloud.retail.v2.Audience"
      optional :color_info, :message, 25, "google.cloud.retail.v2.ColorInfo"
      repeated :sizes, :string, 26
      repeated :materials, :string, 27
      repeated :patterns, :string, 28
      repeated :conditions, :string, 29
      repeated :promotions, :message, 34, "google.cloud.retail.v2.Promotion"
      optional :publish_time, :message, 33, "google.protobuf.Timestamp"
      optional :retrievable_fields, :message, 30, "google.protobuf.FieldMask"
      repeated :variants, :message, 31, "google.cloud.retail.v2.Product"
      oneof :expiration do
        optional :expire_time, :message, 16, "google.protobuf.Timestamp"
        optional :ttl, :message, 17, "google.protobuf.Duration"
      end
    end
    add_enum "google.cloud.retail.v2.Product.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :PRIMARY, 1
      value :VARIANT, 2
      value :COLLECTION, 3
    end
    add_enum "google.cloud.retail.v2.Product.Availability" do
      value :AVAILABILITY_UNSPECIFIED, 0
      value :IN_STOCK, 1
      value :OUT_OF_STOCK, 2
      value :PREORDER, 3
      value :BACKORDER, 4
    end
  end
end

module Google
  module Cloud
    module Retail
      module V2
        Product = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Product").msgclass
        Product::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Product.Type").enummodule
        Product::Availability = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.Product.Availability").enummodule
      end
    end
  end
end
