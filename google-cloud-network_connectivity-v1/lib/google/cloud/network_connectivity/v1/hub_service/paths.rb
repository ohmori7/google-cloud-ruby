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
    module NetworkConnectivity
      module V1
        module HubService
          # Path helper methods for the HubService API.
          module Paths
            ##
            # Create a fully-qualified Hub resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/global/hubs/{hub}`
            #
            # @param project [String]
            # @param hub [String]
            #
            # @return [::String]
            def hub_path project:, hub:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/global/hubs/#{hub}"
            end

            ##
            # Create a fully-qualified Instance resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/zones/{zone}/instances/{instance}`
            #
            # @param project [String]
            # @param zone [String]
            # @param instance [String]
            #
            # @return [::String]
            def instance_path project:, zone:, instance:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "zone cannot contain /" if zone.to_s.include? "/"

              "projects/#{project}/zones/#{zone}/instances/#{instance}"
            end

            ##
            # Create a fully-qualified InterconnectAttachment resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/regions/{region}/interconnectAttachments/{resource_id}`
            #
            # @param project [String]
            # @param region [String]
            # @param resource_id [String]
            #
            # @return [::String]
            def interconnect_attachment_path project:, region:, resource_id:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "region cannot contain /" if region.to_s.include? "/"

              "projects/#{project}/regions/#{region}/interconnectAttachments/#{resource_id}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Network resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/global/networks/{resource_id}`
            #
            # @param project [String]
            # @param resource_id [String]
            #
            # @return [::String]
            def network_path project:, resource_id:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/global/networks/#{resource_id}"
            end

            ##
            # Create a fully-qualified Spoke resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/spokes/{spoke}`
            #
            # @param project [String]
            # @param location [String]
            # @param spoke [String]
            #
            # @return [::String]
            def spoke_path project:, location:, spoke:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/spokes/#{spoke}"
            end

            ##
            # Create a fully-qualified VpnTunnel resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/regions/{region}/vpnTunnels/{resource_id}`
            #
            # @param project [String]
            # @param region [String]
            # @param resource_id [String]
            #
            # @return [::String]
            def vpn_tunnel_path project:, region:, resource_id:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "region cannot contain /" if region.to_s.include? "/"

              "projects/#{project}/regions/#{region}/vpnTunnels/#{resource_id}"
            end

            extend self
          end
        end
      end
    end
  end
end
