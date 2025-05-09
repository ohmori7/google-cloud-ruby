# frozen_string_literal: true

# Copyright 2025 Google LLC
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
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::ReasoningEngineService::Client#create_reasoning_engine ReasoningEngineService.CreateReasoningEngine}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the ReasoningEngine
        #     in. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] reasoning_engine
        #   @return [::Google::Cloud::AIPlatform::V1::ReasoningEngine]
        #     Required. The ReasoningEngine to create.
        class CreateReasoningEngineRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of
        # {::Google::Cloud::AIPlatform::V1::ReasoningEngineService::Client#create_reasoning_engine ReasoningEngineService.CreateReasoningEngine}
        # operation.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The common part of the operation metadata.
        class CreateReasoningEngineOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::ReasoningEngineService::Client#get_reasoning_engine ReasoningEngineService.GetReasoningEngine}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the ReasoningEngine resource.
        #     Format:
        #     `projects/{project}/locations/{location}/reasoningEngines/{reasoning_engine}`
        class GetReasoningEngineRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::ReasoningEngineService::Client#update_reasoning_engine ReasoningEngineService.UpdateReasoningEngine}.
        # @!attribute [rw] reasoning_engine
        #   @return [::Google::Cloud::AIPlatform::V1::ReasoningEngine]
        #     Required. The ReasoningEngine which replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Mask specifying which fields to update.
        class UpdateReasoningEngineRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of
        # {::Google::Cloud::AIPlatform::V1::ReasoningEngineService::Client#update_reasoning_engine ReasoningEngineService.UpdateReasoningEngine}
        # operation.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The common part of the operation metadata.
        class UpdateReasoningEngineOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::ReasoningEngineService::Client#list_reasoning_engines ReasoningEngineService.ListReasoningEngines}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to list the ReasoningEngines
        #     from. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The standard list filter.
        #     More detail in [AIP-160](https://google.aip.dev/160).
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The standard list page token.
        class ListReasoningEnginesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::ReasoningEngineService::Client#list_reasoning_engines ReasoningEngineService.ListReasoningEngines}
        # @!attribute [rw] reasoning_engines
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ReasoningEngine>]
        #     List of ReasoningEngines in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListReasoningEnginesRequest#page_token ListReasoningEnginesRequest.page_token}
        #     to obtain that page.
        class ListReasoningEnginesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::ReasoningEngineService::Client#delete_reasoning_engine ReasoningEngineService.DeleteReasoningEngine}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the ReasoningEngine resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/reasoningEngines/{reasoning_engine}`
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     Optional. If set to true, child resources of this reasoning engine will
        #     also be deleted. Otherwise, the request will fail with FAILED_PRECONDITION
        #     error when the reasoning engine has undeleted child resources.
        class DeleteReasoningEngineRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
