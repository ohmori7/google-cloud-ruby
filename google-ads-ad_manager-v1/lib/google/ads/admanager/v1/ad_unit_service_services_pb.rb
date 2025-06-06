# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/ads/admanager/v1/ad_unit_service.proto for package 'Google.Ads.AdManager.V1'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/ads/admanager/v1/ad_unit_service_pb'

module Google
  module Ads
    module AdManager
      module V1
        module AdUnitService
          # Provides methods for handling AdUnit objects.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.ads.admanager.v1.AdUnitService'

            # API to retrieve an AdUnit object.
            rpc :GetAdUnit, ::Google::Ads::AdManager::V1::GetAdUnitRequest, ::Google::Ads::AdManager::V1::AdUnit
            # API to retrieve a list of AdUnit objects.
            rpc :ListAdUnits, ::Google::Ads::AdManager::V1::ListAdUnitsRequest, ::Google::Ads::AdManager::V1::ListAdUnitsResponse
            # API to retrieve a list of AdUnitSize objects.
            rpc :ListAdUnitSizes, ::Google::Ads::AdManager::V1::ListAdUnitSizesRequest, ::Google::Ads::AdManager::V1::ListAdUnitSizesResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
