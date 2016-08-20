# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.3 on 2016-05-30 12:51:21.

require 'adwords_api/errors'

module AdwordsApi; module V201605; module ConversionTrackerService
  class ConversionTrackerServiceRegistry
    CONVERSIONTRACKERSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"ConversionTrackerPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"ConversionTrackerOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"ConversionTrackerReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :query=>{:input=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"query_response", :fields=>[{:name=>:rval, :type=>"ConversionTrackerPage", :min_occurs=>0, :max_occurs=>1}]}}}
    CONVERSIONTRACKERSERVICE_TYPES = {:AdCallMetricsConversion=>{:fields=>[{:name=>:phone_call_duration, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ConversionTracker"}, :AdWordsConversionTracker=>{:fields=>[{:name=>:snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:text_format, :type=>"AdWordsConversionTracker.TextFormat", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_page_language, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:background_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:tracking_code_type, :type=>"AdWordsConversionTracker.TrackingCodeType", :min_occurs=>0, :max_occurs=>1}], :base=>"ConversionTracker"}, :AppConversion=>{:fields=>[{:name=>:app_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_platform, :type=>"AppConversion.AppPlatform", :min_occurs=>0, :max_occurs=>1}, {:name=>:snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_conversion_type, :type=>"AppConversion.AppConversionType", :min_occurs=>0, :max_occurs=>1}, {:name=>:app_postback_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ConversionTracker"}, :AppPostbackUrlError=>{:fields=>[{:name=>:reason, :type=>"AppPostbackUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ConversionTrackingError=>{:fields=>[{:name=>:reason, :type=>"ConversionTrackingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :QueryError=>{:fields=>[{:name=>:reason, :type=>"QueryError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :UploadConversion=>{:fields=>[], :base=>"ConversionTracker"}, :WebsiteCallMetricsConversion=>{:fields=>[{:name=>:phone_call_duration, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ConversionTracker"}, :ConversionTracker=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:original_conversion_type_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"ConversionTracker.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:category, :type=>"ConversionTracker.Category", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_type_owner_customer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:viewthrough_lookback_window, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:ctc_lookback_window, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:counting_type, :type=>"ConversionDeduplicationMode", :min_occurs=>0, :max_occurs=>1}, {:name=>:default_revenue_value, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:default_revenue_currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:always_use_default_revenue_value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:exclude_from_bidding, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:most_recent_conversion_date, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_received_request_time, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:conversion_tracker_type, :original_name=>"ConversionTracker.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ConversionTrackerOperation=>{:fields=>[{:name=>:operand, :type=>"ConversionTracker", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :ConversionTrackerReturnValue=>{:fields=>[{:name=>:value, :type=>"ConversionTracker", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ConversionTrackerPage=>{:fields=>[{:name=>:entries, :type=>"ConversionTracker", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"NoStatsPage"}, :NoStatsPage=>{:fields=>[], :abstract=>true, :base=>"Page"}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :"AdWordsConversionTracker.TextFormat"=>{:fields=>[]}, :"AdWordsConversionTracker.TrackingCodeType"=>{:fields=>[]}, :"AppConversion.AppConversionType"=>{:fields=>[]}, :"AppConversion.AppPlatform"=>{:fields=>[]}, :"AppPostbackUrlError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"AuthorizationError.Reason"=>{:fields=>[]}, :"ClientTermsError.Reason"=>{:fields=>[]}, :ConversionDeduplicationMode=>{:fields=>[]}, :"ConversionTracker.Category"=>{:fields=>[]}, :"ConversionTracker.Status"=>{:fields=>[]}, :"ConversionTrackingError.Reason"=>{:fields=>[]}, :"DatabaseError.Reason"=>{:fields=>[]}, :"DateError.Reason"=>{:fields=>[]}, :"DistinctError.Reason"=>{:fields=>[]}, :"IdError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"NotEmptyError.Reason"=>{:fields=>[]}, :"OperationAccessDenied.Reason"=>{:fields=>[]}, :Operator=>{:fields=>[]}, :"OperatorError.Reason"=>{:fields=>[]}, :"Predicate.Operator"=>{:fields=>[]}, :"QueryError.Reason"=>{:fields=>[]}, :"QuotaCheckError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RateExceededError.Reason"=>{:fields=>[]}, :"ReadOnlyError.Reason"=>{:fields=>[]}, :"RejectedError.Reason"=>{:fields=>[]}, :"RequestError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"SelectorError.Reason"=>{:fields=>[]}, :"SizeLimitError.Reason"=>{:fields=>[]}, :SortOrder=>{:fields=>[]}, :"StringFormatError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}}
    CONVERSIONTRACKERSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CONVERSIONTRACKERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CONVERSIONTRACKERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CONVERSIONTRACKERSERVICE_NAMESPACES[index]
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
      super(exception_fault, ConversionTrackerServiceRegistry)
    end
  end
end; end; end
