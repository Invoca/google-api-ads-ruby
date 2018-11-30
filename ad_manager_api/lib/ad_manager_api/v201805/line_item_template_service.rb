# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-05-07 18:02:56.

require 'ads_common/savon_service'
require 'ad_manager_api/v201805/line_item_template_service_registry'

module AdManagerApi; module V201805; module LineItemTemplateService
  class LineItemTemplateService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201805'
      super(config, endpoint, namespace, :v201805)
    end

    def get_line_item_templates_by_statement(*args, &block)
      return execute_action('get_line_item_templates_by_statement', args, &block)
    end

    def get_line_item_templates_by_statement_to_xml(*args)
      return get_soap_xml('get_line_item_templates_by_statement', args)
    end

    private

    def get_service_registry()
      return LineItemTemplateServiceRegistry
    end

    def get_module()
      return AdManagerApi::V201805::LineItemTemplateService
    end
  end
end; end; end
