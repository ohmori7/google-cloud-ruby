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
    module NetworkSecurity
      module V1beta1
        # AuthorizationPolicy is a resource that specifies how a server
        # should authorize incoming connections. This resource in itself does
        # not change the configuration unless it's attached to a target https
        # proxy or endpoint config selector resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the AuthorizationPolicy resource. It matches pattern
        #     `projects/{project}/locations/{location}/authorizationPolicies/<authorization_policy>`.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Free-text description of the resource.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the resource was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The timestamp when the resource was updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Set of label tags associated with the AuthorizationPolicy resource.
        # @!attribute [rw] action
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::AuthorizationPolicy::Action]
        #     Required. The action to take when a rule match is found. Possible values
        #     are "ALLOW" or "DENY".
        # @!attribute [rw] rules
        #   @return [::Array<::Google::Cloud::NetworkSecurity::V1beta1::AuthorizationPolicy::Rule>]
        #     Optional. List of rules to match. Note that at least one of the rules must match in
        #     order for the action specified in the 'action' field to be taken. A rule is
        #     a match if there is a matching source and destination. If left blank, the
        #     action specified in the `action` field will be applied on every request.
        class AuthorizationPolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specification of rules.
          # @!attribute [rw] sources
          #   @return [::Array<::Google::Cloud::NetworkSecurity::V1beta1::AuthorizationPolicy::Rule::Source>]
          #     Optional. List of attributes for the traffic source. All of the sources must match.
          #     A source is a match if both principals and ip_blocks match. If not set,
          #     the action specified in the 'action' field will be applied without any
          #     rule checks for the source.
          # @!attribute [rw] destinations
          #   @return [::Array<::Google::Cloud::NetworkSecurity::V1beta1::AuthorizationPolicy::Rule::Destination>]
          #     Optional. List of attributes for the traffic destination. All of the destinations
          #     must match. A destination is a match if a request matches all the
          #     specified hosts, ports, methods and headers. If not set, the
          #     action specified in the 'action' field will be applied without any rule
          #     checks for the destination.
          class Rule
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Specification of traffic source attributes.
            # @!attribute [rw] principals
            #   @return [::Array<::String>]
            #     Optional. List of peer identities to match for authorization. At least one
            #     principal should match. Each peer can be an exact match, or a prefix
            #     match (example, "namespace/*") or a suffix match (example, //
            #     */service-account") or a presence match "*". Authorization based on the
            #     principal name without certificate validation (configured by
            #     ServerTlsPolicy resource) is considered insecure.
            # @!attribute [rw] ip_blocks
            #   @return [::Array<::String>]
            #     Optional. List of CIDR ranges to match based on source IP address. At least one
            #     IP block should match. Single IP (e.g., "1.2.3.4") and CIDR (e.g.,
            #     "1.2.3.0/24") are supported. Authorization based on source IP alone
            #     should be avoided. The IP addresses of any load balancers or proxies
            #     should be considered untrusted.
            class Source
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Specification of traffic destination attributes.
            # @!attribute [rw] hosts
            #   @return [::Array<::String>]
            #     Required. List of host names to match. Matched against the ":authority" header in
            #     http requests. At least one host should match. Each host can be an
            #     exact match, or a prefix match (example "mydomain.*") or a suffix
            #     match (example // *.myorg.com") or a presence(any) match "*".
            # @!attribute [rw] ports
            #   @return [::Array<::Integer>]
            #     Required. List of destination ports to match. At least one port should match.
            # @!attribute [rw] methods
            #   @return [::Array<::String>]
            #     Optional. A list of HTTP methods to match. At least one method should
            #     match. Should not be set for gRPC services.
            # @!attribute [rw] http_header_match
            #   @return [::Google::Cloud::NetworkSecurity::V1beta1::AuthorizationPolicy::Rule::Destination::HttpHeaderMatch]
            #     Optional. Match against key:value pair in http header. Provides a flexible match
            #     based on HTTP headers, for potentially advanced use cases. At least one
            #     header should match. Avoid using header matches to make authorization
            #     decisions unless there is a strong guarantee that requests arrive
            #     through a trusted client or proxy.
            class Destination
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Specification of HTTP header match atrributes.
              # @!attribute [rw] regex_match
              #   @return [::String]
              #     Required. The value of the header must match the regular expression
              #     specified in regexMatch. For regular expression grammar,
              #     please see: en.cppreference.com/w/cpp/regex/ecmascript
              #     For matching against a port specified in the HTTP
              #     request, use a headerMatch with headerName set to Host
              #     and a regular expression that satisfies the RFC2616 Host
              #     header's port specifier.
              # @!attribute [rw] header_name
              #   @return [::String]
              #     Required. The name of the HTTP header to match. For matching
              #     against the HTTP request's authority, use a headerMatch
              #     with the header name ":authority". For matching a
              #     request's method, use the headerName ":method".
              class HttpHeaderMatch
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Possible values that define what action to take.
          module Action
            # Default value.
            ACTION_UNSPECIFIED = 0

            # Grant access.
            ALLOW = 1

            # Deny access.
            # Deny rules should be avoided unless they are used to provide a default
            # "deny all" fallback.
            DENY = 2
          end
        end

        # Request used with the ListAuthorizationPolicies method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location from which the AuthorizationPolicies
        #     should be listed, specified in the format
        #     `projects/{project}/locations/{location}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of AuthorizationPolicies to return per call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The value returned by the last
        #     `ListAuthorizationPoliciesResponse` Indicates that this is a
        #     continuation of a prior `ListAuthorizationPolicies` call, and
        #     that the system should return the next page of data.
        class ListAuthorizationPoliciesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response returned by the ListAuthorizationPolicies method.
        # @!attribute [rw] authorization_policies
        #   @return [::Array<::Google::Cloud::NetworkSecurity::V1beta1::AuthorizationPolicy>]
        #     List of AuthorizationPolicies resources.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there might be more results than those appearing in this response, then
        #     `next_page_token` is included. To get the next set of results, call this
        #     method again using the value of `next_page_token` as `page_token`.
        class ListAuthorizationPoliciesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request used by the GetAuthorizationPolicy method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A name of the AuthorizationPolicy to get. Must be in the format
        #     `projects/{project}/locations/{location}/authorizationPolicies/*`.
        class GetAuthorizationPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request used by the CreateAuthorizationPolicy method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource of the AuthorizationPolicy. Must be in the
        #     format `projects/{project}/locations/{location}`.
        # @!attribute [rw] authorization_policy_id
        #   @return [::String]
        #     Required. Short name of the AuthorizationPolicy resource to be created.
        #     This value should be 1-63 characters long, containing only
        #     letters, numbers, hyphens, and underscores, and should not start
        #     with a number. E.g. "authz_policy".
        # @!attribute [rw] authorization_policy
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::AuthorizationPolicy]
        #     Required. AuthorizationPolicy resource to be created.
        class CreateAuthorizationPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request used by the UpdateAuthorizationPolicy method.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Field mask is used to specify the fields to be overwritten in the
        #     AuthorizationPolicy resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. If the
        #     user does not provide a mask then all fields will be overwritten.
        # @!attribute [rw] authorization_policy
        #   @return [::Google::Cloud::NetworkSecurity::V1beta1::AuthorizationPolicy]
        #     Required. Updated AuthorizationPolicy resource.
        class UpdateAuthorizationPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request used by the DeleteAuthorizationPolicy method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. A name of the AuthorizationPolicy to delete. Must be in the format
        #     `projects/{project}/locations/{location}/authorizationPolicies/*`.
        class DeleteAuthorizationPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
