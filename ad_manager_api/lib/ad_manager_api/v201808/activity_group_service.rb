# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-08-02 14:04:11.

require 'ads_common/savon_service'
require 'ad_manager_api/v201808/activity_group_service_registry'

module AdManagerApi; module V201808; module ActivityGroupService
  class ActivityGroupService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201808'
      super(config, endpoint, namespace, :v201808)
    end

    def create_activity_groups(*args, &block)
      return execute_action('create_activity_groups', args, &block)
    end

    def create_activity_groups_to_xml(*args)
      return get_soap_xml('create_activity_groups', args)
    end

    def get_activity_groups_by_statement(*args, &block)
      return execute_action('get_activity_groups_by_statement', args, &block)
    end

    def get_activity_groups_by_statement_to_xml(*args)
      return get_soap_xml('get_activity_groups_by_statement', args)
    end

    def update_activity_groups(*args, &block)
      return execute_action('update_activity_groups', args, &block)
    end

    def update_activity_groups_to_xml(*args)
      return get_soap_xml('update_activity_groups', args)
    end

    private

    def get_service_registry()
      return ActivityGroupServiceRegistry
    end

    def get_module()
      return AdManagerApi::V201808::ActivityGroupService
    end
  end
end; end; end
