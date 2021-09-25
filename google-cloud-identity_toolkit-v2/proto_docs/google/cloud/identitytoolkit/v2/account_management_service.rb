# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module IdentityToolkit
      module V2
        # Finishes enrolling a second factor for the user.
        # @!attribute [rw] id_token
        #   @return [::String]
        #     Required. ID token.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Display name which is entered  by users to distinguish between different
        #     second factors with same type or different type.
        # @!attribute [rw] phone_verification_info
        #   @return [::Google::Cloud::IdentityToolkit::V2::FinalizeMfaPhoneRequestInfo]
        #     Verification info to authorize sending an SMS for phone verification.
        # @!attribute [rw] tenant_id
        #   @return [::String]
        #     The ID of the Identity Platform tenant that the user enrolling MFA belongs
        #     to. If not set, the user belongs to the default Identity Platform project.
        class FinalizeMfaEnrollmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # FinalizeMfaEnrollment response.
        # @!attribute [rw] id_token
        #   @return [::String]
        #     ID token updated to reflect MFA enrollment.
        # @!attribute [rw] refresh_token
        #   @return [::String]
        #     Refresh token updated to reflect MFA enrollment.
        # @!attribute [rw] phone_auth_info
        #   @return [::Google::Cloud::IdentityToolkit::V2::FinalizeMfaPhoneResponseInfo]
        class FinalizeMfaEnrollmentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Sends MFA enrollment verification SMS for a user.
        # @!attribute [rw] id_token
        #   @return [::String]
        #     Required. User's ID token.
        # @!attribute [rw] phone_enrollment_info
        #   @return [::Google::Cloud::IdentityToolkit::V2::StartMfaPhoneRequestInfo]
        #     Verification info to authorize sending an SMS for phone verification.
        # @!attribute [rw] tenant_id
        #   @return [::String]
        #     The ID of the Identity Platform tenant that the user enrolling MFA belongs
        #     to. If not set, the user belongs to the default Identity Platform project.
        class StartMfaEnrollmentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # StartMfaEnrollment response.
        # @!attribute [rw] phone_session_info
        #   @return [::Google::Cloud::IdentityToolkit::V2::StartMfaPhoneResponseInfo]
        #     Verification info to authorize sending an SMS for phone verification.
        class StartMfaEnrollmentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Withdraws MFA.
        # @!attribute [rw] id_token
        #   @return [::String]
        #     Required. User's ID token.
        # @!attribute [rw] mfa_enrollment_id
        #   @return [::String]
        #     Required. MFA enrollment id from a current MFA enrollment.
        # @!attribute [rw] tenant_id
        #   @return [::String]
        #     The ID of the Identity Platform tenant that the user unenrolling MFA
        #     belongs to. If not set, the user belongs to the default Identity Platform
        #     project.
        class WithdrawMfaRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Withdraws MultiFactorAuth response.
        # @!attribute [rw] id_token
        #   @return [::String]
        #     ID token updated to reflect removal of the second factor.
        # @!attribute [rw] refresh_token
        #   @return [::String]
        #     Refresh token updated to reflect removal of the second factor.
        class WithdrawMfaResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
