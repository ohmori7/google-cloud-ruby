# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/session.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/cx/v3/advanced_settings_pb'
require 'google/cloud/dialogflow/cx/v3/audio_config_pb'
require 'google/cloud/dialogflow/cx/v3/flow_pb'
require 'google/cloud/dialogflow/cx/v3/intent_pb'
require 'google/cloud/dialogflow/cx/v3/page_pb'
require 'google/cloud/dialogflow/cx/v3/response_message_pb'
require 'google/cloud/dialogflow/cx/v3/session_entity_type_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/struct_pb'
require 'google/rpc/status_pb'
require 'google/type/latlng_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/cx/v3/session.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.cx.v3.DetectIntentRequest" do
      optional :session, :string, 1
      optional :query_params, :message, 2, "google.cloud.dialogflow.cx.v3.QueryParameters"
      optional :query_input, :message, 3, "google.cloud.dialogflow.cx.v3.QueryInput"
      optional :output_audio_config, :message, 4, "google.cloud.dialogflow.cx.v3.OutputAudioConfig"
    end
    add_message "google.cloud.dialogflow.cx.v3.DetectIntentResponse" do
      optional :response_id, :string, 1
      optional :query_result, :message, 2, "google.cloud.dialogflow.cx.v3.QueryResult"
      optional :output_audio, :bytes, 4
      optional :output_audio_config, :message, 5, "google.cloud.dialogflow.cx.v3.OutputAudioConfig"
      optional :response_type, :enum, 6, "google.cloud.dialogflow.cx.v3.DetectIntentResponse.ResponseType"
      optional :allow_cancellation, :bool, 7
    end
    add_enum "google.cloud.dialogflow.cx.v3.DetectIntentResponse.ResponseType" do
      value :RESPONSE_TYPE_UNSPECIFIED, 0
      value :PARTIAL, 1
      value :FINAL, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.StreamingDetectIntentRequest" do
      optional :session, :string, 1
      optional :query_params, :message, 2, "google.cloud.dialogflow.cx.v3.QueryParameters"
      optional :query_input, :message, 3, "google.cloud.dialogflow.cx.v3.QueryInput"
      optional :output_audio_config, :message, 4, "google.cloud.dialogflow.cx.v3.OutputAudioConfig"
      optional :enable_partial_response, :bool, 5
    end
    add_message "google.cloud.dialogflow.cx.v3.StreamingDetectIntentResponse" do
      oneof :response do
        optional :recognition_result, :message, 1, "google.cloud.dialogflow.cx.v3.StreamingRecognitionResult"
        optional :detect_intent_response, :message, 2, "google.cloud.dialogflow.cx.v3.DetectIntentResponse"
      end
    end
    add_message "google.cloud.dialogflow.cx.v3.StreamingRecognitionResult" do
      optional :message_type, :enum, 1, "google.cloud.dialogflow.cx.v3.StreamingRecognitionResult.MessageType"
      optional :transcript, :string, 2
      optional :is_final, :bool, 3
      optional :confidence, :float, 4
      optional :stability, :float, 6
      repeated :speech_word_info, :message, 7, "google.cloud.dialogflow.cx.v3.SpeechWordInfo"
      optional :speech_end_offset, :message, 8, "google.protobuf.Duration"
      optional :language_code, :string, 10
    end
    add_enum "google.cloud.dialogflow.cx.v3.StreamingRecognitionResult.MessageType" do
      value :MESSAGE_TYPE_UNSPECIFIED, 0
      value :TRANSCRIPT, 1
      value :END_OF_SINGLE_UTTERANCE, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.QueryParameters" do
      optional :time_zone, :string, 1
      optional :geo_location, :message, 2, "google.type.LatLng"
      repeated :session_entity_types, :message, 3, "google.cloud.dialogflow.cx.v3.SessionEntityType"
      optional :payload, :message, 4, "google.protobuf.Struct"
      optional :parameters, :message, 5, "google.protobuf.Struct"
      optional :current_page, :string, 6
      optional :disable_webhook, :bool, 7
      optional :analyze_query_text_sentiment, :bool, 8
      map :webhook_headers, :string, :string, 10
      repeated :flow_versions, :string, 14
    end
    add_message "google.cloud.dialogflow.cx.v3.QueryInput" do
      optional :language_code, :string, 4
      oneof :input do
        optional :text, :message, 2, "google.cloud.dialogflow.cx.v3.TextInput"
        optional :intent, :message, 3, "google.cloud.dialogflow.cx.v3.IntentInput"
        optional :audio, :message, 5, "google.cloud.dialogflow.cx.v3.AudioInput"
        optional :event, :message, 6, "google.cloud.dialogflow.cx.v3.EventInput"
        optional :dtmf, :message, 7, "google.cloud.dialogflow.cx.v3.DtmfInput"
      end
    end
    add_message "google.cloud.dialogflow.cx.v3.QueryResult" do
      optional :language_code, :string, 2
      optional :parameters, :message, 3, "google.protobuf.Struct"
      repeated :response_messages, :message, 4, "google.cloud.dialogflow.cx.v3.ResponseMessage"
      repeated :webhook_statuses, :message, 13, "google.rpc.Status"
      repeated :webhook_payloads, :message, 6, "google.protobuf.Struct"
      optional :current_page, :message, 7, "google.cloud.dialogflow.cx.v3.Page"
      optional :intent, :message, 8, "google.cloud.dialogflow.cx.v3.Intent"
      optional :intent_detection_confidence, :float, 9
      optional :match, :message, 15, "google.cloud.dialogflow.cx.v3.Match"
      optional :diagnostic_info, :message, 10, "google.protobuf.Struct"
      optional :sentiment_analysis_result, :message, 17, "google.cloud.dialogflow.cx.v3.SentimentAnalysisResult"
      oneof :query do
        optional :text, :string, 1
        optional :trigger_intent, :string, 11
        optional :transcript, :string, 12
        optional :trigger_event, :string, 14
        optional :dtmf, :message, 23, "google.cloud.dialogflow.cx.v3.DtmfInput"
      end
    end
    add_message "google.cloud.dialogflow.cx.v3.TextInput" do
      optional :text, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.IntentInput" do
      optional :intent, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.AudioInput" do
      optional :config, :message, 1, "google.cloud.dialogflow.cx.v3.InputAudioConfig"
      optional :audio, :bytes, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.EventInput" do
      optional :event, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.DtmfInput" do
      optional :digits, :string, 1
      optional :finish_digit, :string, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.Match" do
      optional :intent, :message, 1, "google.cloud.dialogflow.cx.v3.Intent"
      optional :event, :string, 6
      optional :parameters, :message, 2, "google.protobuf.Struct"
      optional :resolved_input, :string, 3
      optional :match_type, :enum, 4, "google.cloud.dialogflow.cx.v3.Match.MatchType"
      optional :confidence, :float, 5
    end
    add_enum "google.cloud.dialogflow.cx.v3.Match.MatchType" do
      value :MATCH_TYPE_UNSPECIFIED, 0
      value :INTENT, 1
      value :DIRECT_INTENT, 2
      value :PARAMETER_FILLING, 3
      value :NO_MATCH, 4
      value :NO_INPUT, 5
      value :EVENT, 6
    end
    add_message "google.cloud.dialogflow.cx.v3.MatchIntentRequest" do
      optional :session, :string, 1
      optional :query_params, :message, 2, "google.cloud.dialogflow.cx.v3.QueryParameters"
      optional :query_input, :message, 3, "google.cloud.dialogflow.cx.v3.QueryInput"
    end
    add_message "google.cloud.dialogflow.cx.v3.MatchIntentResponse" do
      repeated :matches, :message, 4, "google.cloud.dialogflow.cx.v3.Match"
      optional :current_page, :message, 5, "google.cloud.dialogflow.cx.v3.Page"
      oneof :query do
        optional :text, :string, 1
        optional :trigger_intent, :string, 2
        optional :transcript, :string, 3
        optional :trigger_event, :string, 6
      end
    end
    add_message "google.cloud.dialogflow.cx.v3.FulfillIntentRequest" do
      optional :match_intent_request, :message, 1, "google.cloud.dialogflow.cx.v3.MatchIntentRequest"
      optional :match, :message, 2, "google.cloud.dialogflow.cx.v3.Match"
      optional :output_audio_config, :message, 3, "google.cloud.dialogflow.cx.v3.OutputAudioConfig"
    end
    add_message "google.cloud.dialogflow.cx.v3.FulfillIntentResponse" do
      optional :response_id, :string, 1
      optional :query_result, :message, 2, "google.cloud.dialogflow.cx.v3.QueryResult"
      optional :output_audio, :bytes, 3
      optional :output_audio_config, :message, 4, "google.cloud.dialogflow.cx.v3.OutputAudioConfig"
    end
    add_message "google.cloud.dialogflow.cx.v3.SentimentAnalysisResult" do
      optional :score, :float, 1
      optional :magnitude, :float, 2
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          DetectIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DetectIntentRequest").msgclass
          DetectIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DetectIntentResponse").msgclass
          DetectIntentResponse::ResponseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DetectIntentResponse.ResponseType").enummodule
          StreamingDetectIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.StreamingDetectIntentRequest").msgclass
          StreamingDetectIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.StreamingDetectIntentResponse").msgclass
          StreamingRecognitionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.StreamingRecognitionResult").msgclass
          StreamingRecognitionResult::MessageType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.StreamingRecognitionResult.MessageType").enummodule
          QueryParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.QueryParameters").msgclass
          QueryInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.QueryInput").msgclass
          QueryResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.QueryResult").msgclass
          TextInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.TextInput").msgclass
          IntentInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.IntentInput").msgclass
          AudioInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AudioInput").msgclass
          EventInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.EventInput").msgclass
          DtmfInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DtmfInput").msgclass
          Match = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Match").msgclass
          Match::MatchType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Match.MatchType").enummodule
          MatchIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.MatchIntentRequest").msgclass
          MatchIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.MatchIntentResponse").msgclass
          FulfillIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.FulfillIntentRequest").msgclass
          FulfillIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.FulfillIntentResponse").msgclass
          SentimentAnalysisResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SentimentAnalysisResult").msgclass
        end
      end
    end
  end
end
