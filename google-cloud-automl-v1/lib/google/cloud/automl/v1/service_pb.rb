# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/automl/v1/annotation_payload_pb'
require 'google/cloud/automl/v1/annotation_spec_pb'
require 'google/cloud/automl/v1/dataset_pb'
require 'google/cloud/automl/v1/image_pb'
require 'google/cloud/automl/v1/io_pb'
require 'google/cloud/automl/v1/model_pb'
require 'google/cloud/automl/v1/model_evaluation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1/service.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1.CreateDatasetRequest" do
      optional :parent, :string, 1
      optional :dataset, :message, 2, "google.cloud.automl.v1.Dataset"
    end
    add_message "google.cloud.automl.v1.GetDatasetRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.automl.v1.ListDatasetsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 3
      optional :page_size, :int32, 4
      optional :page_token, :string, 6
    end
    add_message "google.cloud.automl.v1.ListDatasetsResponse" do
      repeated :datasets, :message, 1, "google.cloud.automl.v1.Dataset"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.automl.v1.UpdateDatasetRequest" do
      optional :dataset, :message, 1, "google.cloud.automl.v1.Dataset"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.automl.v1.DeleteDatasetRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.automl.v1.ImportDataRequest" do
      optional :name, :string, 1
      optional :input_config, :message, 3, "google.cloud.automl.v1.InputConfig"
    end
    add_message "google.cloud.automl.v1.ExportDataRequest" do
      optional :name, :string, 1
      optional :output_config, :message, 3, "google.cloud.automl.v1.OutputConfig"
    end
    add_message "google.cloud.automl.v1.GetAnnotationSpecRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.automl.v1.CreateModelRequest" do
      optional :parent, :string, 1
      optional :model, :message, 4, "google.cloud.automl.v1.Model"
    end
    add_message "google.cloud.automl.v1.GetModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.automl.v1.ListModelsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 3
      optional :page_size, :int32, 4
      optional :page_token, :string, 6
    end
    add_message "google.cloud.automl.v1.ListModelsResponse" do
      repeated :model, :message, 1, "google.cloud.automl.v1.Model"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.automl.v1.DeleteModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.automl.v1.UpdateModelRequest" do
      optional :model, :message, 1, "google.cloud.automl.v1.Model"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.automl.v1.DeployModelRequest" do
      optional :name, :string, 1
      oneof :model_deployment_metadata do
        optional :image_object_detection_model_deployment_metadata, :message, 2, "google.cloud.automl.v1.ImageObjectDetectionModelDeploymentMetadata"
        optional :image_classification_model_deployment_metadata, :message, 4, "google.cloud.automl.v1.ImageClassificationModelDeploymentMetadata"
      end
    end
    add_message "google.cloud.automl.v1.UndeployModelRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.automl.v1.ExportModelRequest" do
      optional :name, :string, 1
      optional :output_config, :message, 3, "google.cloud.automl.v1.ModelExportOutputConfig"
    end
    add_message "google.cloud.automl.v1.GetModelEvaluationRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.automl.v1.ListModelEvaluationsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 3
      optional :page_size, :int32, 4
      optional :page_token, :string, 6
    end
    add_message "google.cloud.automl.v1.ListModelEvaluationsResponse" do
      repeated :model_evaluation, :message, 1, "google.cloud.automl.v1.ModelEvaluation"
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1
        CreateDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.CreateDatasetRequest").msgclass
        GetDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.GetDatasetRequest").msgclass
        ListDatasetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListDatasetsRequest").msgclass
        ListDatasetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListDatasetsResponse").msgclass
        UpdateDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.UpdateDatasetRequest").msgclass
        DeleteDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.DeleteDatasetRequest").msgclass
        ImportDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ImportDataRequest").msgclass
        ExportDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ExportDataRequest").msgclass
        GetAnnotationSpecRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.GetAnnotationSpecRequest").msgclass
        CreateModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.CreateModelRequest").msgclass
        GetModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.GetModelRequest").msgclass
        ListModelsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListModelsRequest").msgclass
        ListModelsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListModelsResponse").msgclass
        DeleteModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.DeleteModelRequest").msgclass
        UpdateModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.UpdateModelRequest").msgclass
        DeployModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.DeployModelRequest").msgclass
        UndeployModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.UndeployModelRequest").msgclass
        ExportModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ExportModelRequest").msgclass
        GetModelEvaluationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.GetModelEvaluationRequest").msgclass
        ListModelEvaluationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListModelEvaluationsRequest").msgclass
        ListModelEvaluationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListModelEvaluationsResponse").msgclass
      end
    end
  end
end
