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
  module Shopping
    module Merchant
      module Lfp
        module V1beta
          module LfpMerchantStateService
            # Path helper methods for the LfpMerchantStateService API.
            module Paths
              ##
              # Create a fully-qualified LfpMerchantState resource string.
              #
              # The resource will be in the following format:
              #
              # `accounts/{account}/lfpMerchantStates/{lfp_merchant_state}`
              #
              # @param account [String]
              # @param lfp_merchant_state [String]
              #
              # @return [::String]
              def lfp_merchant_state_path account:, lfp_merchant_state:
                raise ::ArgumentError, "account cannot contain /" if account.to_s.include? "/"

                "accounts/#{account}/lfpMerchantStates/#{lfp_merchant_state}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
