# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/privacy/dlp/v2/dlp.proto for package 'google.privacy.dlp.v2'
# Original file comments:
# Copyright 2018 Google Inc.
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
require 'google/privacy/dlp/v2/dlp_pb'

module Google
  module Privacy
    module Dlp
      module V2
        module DlpService
          # The Cloud Data Loss Prevention (DLP) API is a service that allows clients
          # to detect the presence of Personally Identifiable Information (PII) and other
          # privacy-sensitive data in user-supplied, unstructured data streams, like text
          # blocks or images.
          # The service also includes methods for sensitive data redaction and
          # scheduling of data scans on Google Cloud Platform based data sets.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.privacy.dlp.v2.DlpService'

            # Finds potentially sensitive info in content.
            # This method has limits on input size, processing time, and output size.
            # [How-to guide for text](/dlp/docs/inspecting-text), [How-to guide for
            # images](/dlp/docs/inspecting-images)
            rpc :InspectContent, InspectContentRequest, InspectContentResponse
            # Redacts potentially sensitive info from an image.
            # This method has limits on input size, processing time, and output size.
            # [How-to guide](/dlp/docs/redacting-sensitive-data-images)
            rpc :RedactImage, RedactImageRequest, RedactImageResponse
            # De-identifies potentially sensitive info from a ContentItem.
            # This method has limits on input size and output size.
            # [How-to guide](/dlp/docs/deidentify-sensitive-data)
            rpc :DeidentifyContent, DeidentifyContentRequest, DeidentifyContentResponse
            # Re-identifies content that has been de-identified.
            rpc :ReidentifyContent, ReidentifyContentRequest, ReidentifyContentResponse
            # Returns a list of the sensitive information types that the DLP API
            # supports. For more information, see [Listing supported predefined
            # infoTypes](/dlp/docs/listing-infotypes).
            rpc :ListInfoTypes, ListInfoTypesRequest, ListInfoTypesResponse
            # Creates an InspectTemplate for re-using frequently used configuration
            # for inspecting content, images, and storage.
            rpc :CreateInspectTemplate, CreateInspectTemplateRequest, InspectTemplate
            # Updates the InspectTemplate.
            rpc :UpdateInspectTemplate, UpdateInspectTemplateRequest, InspectTemplate
            # Gets an InspectTemplate.
            rpc :GetInspectTemplate, GetInspectTemplateRequest, InspectTemplate
            # Lists InspectTemplates.
            rpc :ListInspectTemplates, ListInspectTemplatesRequest, ListInspectTemplatesResponse
            # Deletes an InspectTemplate.
            rpc :DeleteInspectTemplate, DeleteInspectTemplateRequest, Google::Protobuf::Empty
            # Creates a DeidentifyTemplate for re-using frequently used configuration
            # for de-identifying content, images, and storage.
            rpc :CreateDeidentifyTemplate, CreateDeidentifyTemplateRequest, DeidentifyTemplate
            # Updates the DeidentifyTemplate.
            rpc :UpdateDeidentifyTemplate, UpdateDeidentifyTemplateRequest, DeidentifyTemplate
            # Gets a DeidentifyTemplate.
            rpc :GetDeidentifyTemplate, GetDeidentifyTemplateRequest, DeidentifyTemplate
            # Lists DeidentifyTemplates.
            rpc :ListDeidentifyTemplates, ListDeidentifyTemplatesRequest, ListDeidentifyTemplatesResponse
            # Deletes a DeidentifyTemplate.
            rpc :DeleteDeidentifyTemplate, DeleteDeidentifyTemplateRequest, Google::Protobuf::Empty
            # Creates a job trigger to run DLP actions such as scanning storage for
            # sensitive information on a set schedule.
            rpc :CreateJobTrigger, CreateJobTriggerRequest, JobTrigger
            # Updates a job trigger.
            rpc :UpdateJobTrigger, UpdateJobTriggerRequest, JobTrigger
            # Gets a job trigger.
            rpc :GetJobTrigger, GetJobTriggerRequest, JobTrigger
            # Lists job triggers.
            rpc :ListJobTriggers, ListJobTriggersRequest, ListJobTriggersResponse
            # Deletes a job trigger.
            rpc :DeleteJobTrigger, DeleteJobTriggerRequest, Google::Protobuf::Empty
            # Creates a new job to inspect storage or calculate risk metrics.
            # [How-to guide](/dlp/docs/compute-risk-analysis).
            rpc :CreateDlpJob, CreateDlpJobRequest, DlpJob
            # Lists DlpJobs that match the specified filter in the request.
            rpc :ListDlpJobs, ListDlpJobsRequest, ListDlpJobsResponse
            # Gets the latest state of a long-running DlpJob.
            rpc :GetDlpJob, GetDlpJobRequest, DlpJob
            # Deletes a long-running DlpJob. This method indicates that the client is
            # no longer interested in the DlpJob result. The job will be cancelled if
            # possible.
            rpc :DeleteDlpJob, DeleteDlpJobRequest, Google::Protobuf::Empty
            # Starts asynchronous cancellation on a long-running DlpJob. The server
            # makes a best effort to cancel the DlpJob, but success is not
            # guaranteed.
            rpc :CancelDlpJob, CancelDlpJobRequest, Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
