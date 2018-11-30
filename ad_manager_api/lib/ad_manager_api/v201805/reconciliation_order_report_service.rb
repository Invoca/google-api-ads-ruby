# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-05-07 18:03:10.

require 'ads_common/savon_service'
require 'ad_manager_api/v201805/reconciliation_order_report_service_registry'

module AdManagerApi; module V201805; module ReconciliationOrderReportService
  class ReconciliationOrderReportService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201805'
      super(config, endpoint, namespace, :v201805)
    end

    def get_reconciliation_order_reports_by_statement(*args, &block)
      return execute_action('get_reconciliation_order_reports_by_statement', args, &block)
    end

    def get_reconciliation_order_reports_by_statement_to_xml(*args)
      return get_soap_xml('get_reconciliation_order_reports_by_statement', args)
    end

    def perform_reconciliation_order_report_action(*args, &block)
      return execute_action('perform_reconciliation_order_report_action', args, &block)
    end

    def perform_reconciliation_order_report_action_to_xml(*args)
      return get_soap_xml('perform_reconciliation_order_report_action', args)
    end

    def update_reconciliation_order_reports(*args, &block)
      return execute_action('update_reconciliation_order_reports', args, &block)
    end

    def update_reconciliation_order_reports_to_xml(*args)
      return get_soap_xml('update_reconciliation_order_reports', args)
    end

    private

    def get_service_registry()
      return ReconciliationOrderReportServiceRegistry
    end

    def get_module()
      return AdManagerApi::V201805::ReconciliationOrderReportService
    end
  end
end; end; end
