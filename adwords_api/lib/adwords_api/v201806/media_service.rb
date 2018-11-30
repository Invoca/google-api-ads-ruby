# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-06-04 09:55:20.

require 'ads_common/savon_service'
require 'adwords_api/v201806/media_service_registry'

module AdwordsApi; module V201806; module MediaService
  class MediaService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/cm/v201806'
      super(config, endpoint, namespace, :v201806)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def query(*args, &block)
      return execute_action('query', args, &block)
    end

    def query_to_xml(*args)
      return get_soap_xml('query', args)
    end

    def upload(*args, &block)
      return execute_action('upload', args, &block)
    end

    def upload_to_xml(*args)
      return get_soap_xml('upload', args)
    end

    private

    def get_service_registry()
      return MediaServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201806::MediaService
    end
  end
end; end; end
