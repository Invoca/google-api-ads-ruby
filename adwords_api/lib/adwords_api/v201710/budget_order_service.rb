# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.0 on 2017-10-11 08:45:16.

require 'ads_common/savon_service'
require 'adwords_api/v201710/budget_order_service_registry'

module AdwordsApi; module V201710; module BudgetOrderService
  class BudgetOrderService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://adwords.google.com/api/adwords/billing/v201710'
      super(config, endpoint, namespace, :v201710)
    end

    def get(*args, &block)
      return execute_action('get', args, &block)
    end

    def get_to_xml(*args)
      return get_soap_xml('get', args)
    end

    def get_billing_accounts(*args, &block)
      return execute_action('get_billing_accounts', args, &block)
    end

    def get_billing_accounts_to_xml(*args)
      return get_soap_xml('get_billing_accounts', args)
    end

    def mutate(*args, &block)
      return execute_action('mutate', args, &block)
    end

    def mutate_to_xml(*args)
      return get_soap_xml('mutate', args)
    end

    private

    def get_service_registry()
      return BudgetOrderServiceRegistry
    end

    def get_module()
      return AdwordsApi::V201710::BudgetOrderService
    end
  end
end; end; end
