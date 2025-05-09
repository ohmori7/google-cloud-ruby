# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "helper"
require "gapic/rest"
require "google/cloud/binaryauthorization/v1beta1/service_pb"
require "google/cloud/binary_authorization/v1beta1/binauthz_management_service/rest"


class ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_get_policy
    # Create test objects.
    client_result = ::Google::Cloud::BinaryAuthorization::V1beta1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::ServiceStub.stub :transcode_get_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_policy_client_stub do
        # Create client
        client = ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_policy({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_policy name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_policy ::Google::Cloud::BinaryAuthorization::V1beta1::GetPolicyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_policy({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_policy(::Google::Cloud::BinaryAuthorization::V1beta1::GetPolicyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_policy_client_stub.call_count
      end
    end
  end

  def test_update_policy
    # Create test objects.
    client_result = ::Google::Cloud::BinaryAuthorization::V1beta1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    policy = {}

    update_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::ServiceStub.stub :transcode_update_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_policy_client_stub do
        # Create client
        client = ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_policy({ policy: policy }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_policy policy: policy do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_policy ::Google::Cloud::BinaryAuthorization::V1beta1::UpdatePolicyRequest.new(policy: policy) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_policy({ policy: policy }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_policy(::Google::Cloud::BinaryAuthorization::V1beta1::UpdatePolicyRequest.new(policy: policy), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_policy_client_stub.call_count
      end
    end
  end

  def test_create_attestor
    # Create test objects.
    client_result = ::Google::Cloud::BinaryAuthorization::V1beta1::Attestor.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    attestor_id = "hello world"
    attestor = {}

    create_attestor_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::ServiceStub.stub :transcode_create_attestor_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_attestor_client_stub do
        # Create client
        client = ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_attestor({ parent: parent, attestor_id: attestor_id, attestor: attestor }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_attestor parent: parent, attestor_id: attestor_id, attestor: attestor do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_attestor ::Google::Cloud::BinaryAuthorization::V1beta1::CreateAttestorRequest.new(parent: parent, attestor_id: attestor_id, attestor: attestor) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_attestor({ parent: parent, attestor_id: attestor_id, attestor: attestor }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_attestor(::Google::Cloud::BinaryAuthorization::V1beta1::CreateAttestorRequest.new(parent: parent, attestor_id: attestor_id, attestor: attestor), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_attestor_client_stub.call_count
      end
    end
  end

  def test_get_attestor
    # Create test objects.
    client_result = ::Google::Cloud::BinaryAuthorization::V1beta1::Attestor.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_attestor_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::ServiceStub.stub :transcode_get_attestor_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_attestor_client_stub do
        # Create client
        client = ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_attestor({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_attestor name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_attestor ::Google::Cloud::BinaryAuthorization::V1beta1::GetAttestorRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_attestor({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_attestor(::Google::Cloud::BinaryAuthorization::V1beta1::GetAttestorRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_attestor_client_stub.call_count
      end
    end
  end

  def test_update_attestor
    # Create test objects.
    client_result = ::Google::Cloud::BinaryAuthorization::V1beta1::Attestor.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    attestor = {}

    update_attestor_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::ServiceStub.stub :transcode_update_attestor_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_attestor_client_stub do
        # Create client
        client = ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_attestor({ attestor: attestor }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_attestor attestor: attestor do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_attestor ::Google::Cloud::BinaryAuthorization::V1beta1::UpdateAttestorRequest.new(attestor: attestor) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_attestor({ attestor: attestor }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_attestor(::Google::Cloud::BinaryAuthorization::V1beta1::UpdateAttestorRequest.new(attestor: attestor), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_attestor_client_stub.call_count
      end
    end
  end

  def test_list_attestors
    # Create test objects.
    client_result = ::Google::Cloud::BinaryAuthorization::V1beta1::ListAttestorsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_attestors_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::ServiceStub.stub :transcode_list_attestors_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_attestors_client_stub do
        # Create client
        client = ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_attestors({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_attestors parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_attestors ::Google::Cloud::BinaryAuthorization::V1beta1::ListAttestorsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_attestors({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_attestors(::Google::Cloud::BinaryAuthorization::V1beta1::ListAttestorsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_attestors_client_stub.call_count
      end
    end
  end

  def test_delete_attestor
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_attestor_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::ServiceStub.stub :transcode_delete_attestor_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_attestor_client_stub do
        # Create client
        client = ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_attestor({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_attestor name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_attestor ::Google::Cloud::BinaryAuthorization::V1beta1::DeleteAttestorRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_attestor({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_attestor(::Google::Cloud::BinaryAuthorization::V1beta1::DeleteAttestorRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_attestor_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Rest::Client::Configuration, config
  end
end
