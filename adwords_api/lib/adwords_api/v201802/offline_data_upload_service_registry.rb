# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-03-01 08:29:41.

require 'adwords_api/errors'

module AdwordsApi; module V201802; module OfflineDataUploadService
  class OfflineDataUploadServiceRegistry
    OFFLINEDATAUPLOADSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"OfflineDataUploadPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"OfflineDataUploadOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"OfflineDataUploadReturnValue", :min_occurs=>0, :max_occurs=>1}]}}}
    OFFLINEDATAUPLOADSERVICE_TYPES = {:AdError=>{:fields=>[{:name=>:reason, :type=>"AdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException", :ns=>0}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :original_name=>"ComparableValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue", :ns=>0}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue", :ns=>0}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue", :ns=>0}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NotWhitelistedError=>{:fields=>[{:name=>:reason, :type=>"NotWhitelistedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue", :ns=>0}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :ns=>0}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :ns=>0}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RegionCodeError=>{:fields=>[{:name=>:reason, :type=>"RegionCodeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :ns=>0}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError", :ns=>0}, :"AdError.Reason"=>{:fields=>[], :ns=>0}, :"AuthenticationError.Reason"=>{:fields=>[], :ns=>0}, :"AuthorizationError.Reason"=>{:fields=>[], :ns=>0}, :"CollectionSizeError.Reason"=>{:fields=>[], :ns=>0}, :"DatabaseError.Reason"=>{:fields=>[], :ns=>0}, :"DateError.Reason"=>{:fields=>[], :ns=>0}, :"DistinctError.Reason"=>{:fields=>[], :ns=>0}, :"EntityNotFound.Reason"=>{:fields=>[], :ns=>0}, :"IdError.Reason"=>{:fields=>[], :ns=>0}, :"InternalApiError.Reason"=>{:fields=>[], :ns=>0}, :"NotEmptyError.Reason"=>{:fields=>[], :ns=>0}, :"NotWhitelistedError.Reason"=>{:fields=>[], :ns=>0}, :"NullError.Reason"=>{:fields=>[], :ns=>0}, :"OperationAccessDenied.Reason"=>{:fields=>[], :ns=>0}, :Operator=>{:fields=>[], :ns=>0}, :"OperatorError.Reason"=>{:fields=>[], :ns=>0}, :"Predicate.Operator"=>{:fields=>[], :ns=>0}, :"QuotaCheckError.Reason"=>{:fields=>[], :ns=>0}, :"RangeError.Reason"=>{:fields=>[], :ns=>0}, :"RateExceededError.Reason"=>{:fields=>[], :ns=>0}, :"ReadOnlyError.Reason"=>{:fields=>[], :ns=>0}, :"RegionCodeError.Reason"=>{:fields=>[], :ns=>0}, :"RejectedError.Reason"=>{:fields=>[], :ns=>0}, :"RequiredError.Reason"=>{:fields=>[], :ns=>0}, :"SelectorError.Reason"=>{:fields=>[], :ns=>0}, :"SizeLimitError.Reason"=>{:fields=>[], :ns=>0}, :SortOrder=>{:fields=>[], :ns=>0}, :"StringFormatError.Reason"=>{:fields=>[], :ns=>0}, :"StringLengthError.Reason"=>{:fields=>[], :ns=>0}, :CurrencyCodeError=>{:fields=>[{:name=>:reason, :type=>"CurrencyCodeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FirstPartyUploadMetadata=>{:fields=>[], :base=>"StoreSalesUploadCommonMetadata"}, :MoneyWithCurrency=>{:fields=>[{:name=>:money, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue"}, :OfflineData=>{:fields=>[], :choices=>[{:name=>:store_sales_transaction, :original_name=>"StoreSalesTransaction", :type=>"StoreSalesTransaction", :min_occurs=>1, :max_occurs=>1}]}, :OfflineDataUpload=>{:fields=>[{:name=>:external_upload_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:upload_type, :type=>"OfflineDataUploadType", :min_occurs=>0, :max_occurs=>1}, {:name=>:upload_status, :type=>"OfflineDataUploadStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:upload_metadata, :type=>"UploadMetadata", :min_occurs=>0, :max_occurs=>1}, {:name=>:offline_data_list, :type=>"OfflineData", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:failure_reason, :type=>"OfflineDataUploadFailureReason", :min_occurs=>0, :max_occurs=>1}]}, :OfflineDataUploadError=>{:fields=>[{:name=>:reason, :type=>"OfflineDataUploadError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OfflineDataUploadOperation=>{:fields=>[{:name=>:operand, :type=>"OfflineDataUpload", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :OfflineDataUploadPage=>{:fields=>[{:name=>:entries, :type=>"OfflineDataUpload", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :OfflineDataUploadReturnValue=>{:fields=>[{:name=>:value, :type=>"OfflineDataUpload", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:partial_failure_errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :StoreSalesTransaction=>{:fields=>[{:name=>:user_identifiers, :type=>"UserIdentifier", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:transaction_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:transaction_amount, :type=>"MoneyWithCurrency", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :StoreSalesUploadCommonMetadata=>{:fields=>[{:name=>:loyalty_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:transaction_upload_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:store_sales_upload_common_metadata_type, :original_name=>"StoreSalesUploadCommonMetadata.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ThirdPartyUploadMetadata=>{:fields=>[{:name=>:advertiser_upload_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:valid_transaction_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:partner_match_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:partner_upload_rate, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bridge_map_version_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:partner_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"StoreSalesUploadCommonMetadata"}, :UploadMetadata=>{:fields=>[], :choices=>[{:name=>:store_sales_upload_common_metadata, :original_name=>"StoreSalesUploadCommonMetadata", :type=>"StoreSalesUploadCommonMetadata", :min_occurs=>1, :max_occurs=>1}]}, :UserIdentifier=>{:fields=>[{:name=>:user_identifier_type, :type=>"OfflineDataUploadUserIdentifierType", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :"CurrencyCodeError.Reason"=>{:fields=>[]}, :"OfflineDataUploadError.Reason"=>{:fields=>[]}, :OfflineDataUploadFailureReason=>{:fields=>[]}, :OfflineDataUploadStatus=>{:fields=>[]}, :OfflineDataUploadType=>{:fields=>[]}, :OfflineDataUploadUserIdentifierType=>{:fields=>[]}}
    OFFLINEDATAUPLOADSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v201802"]

    def self.get_method_signature(method_name)
      return OFFLINEDATAUPLOADSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return OFFLINEDATAUPLOADSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return OFFLINEDATAUPLOADSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, OfflineDataUploadServiceRegistry)
    end
  end
end; end; end
